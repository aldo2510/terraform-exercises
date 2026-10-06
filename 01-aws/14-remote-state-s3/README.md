# Remote State con Amazon S3

## Objetivo

Configurar Terraform para almacenar su estado de forma remota en Amazon S3.

Al finalizar:
- Crearás un bucket S3 dedicado al Terraform State.
- Habilitarás versionado, bloqueo de acceso público y cifrado.
- Configurarás el backend S3 mediante una configuración parcial.
- Crearás un recurso AWS y comprobarás que su tfstate está en S3.
- Harás una segunda configuración usando el mismo bucket con otro key.

> Importante: el bucket del state debe existir antes de ejecutar terraform init.

## 1. Prerrequisitos

- AWS CLI configurado.
- Terraform >= 1.6.
- Una cuenta AWS con permisos para crear y administrar S3.

Verifica:

```bash
aws sts get-caller-identity
terraform version
```

## 2. Crear el bucket para Terraform State

El nombre del bucket S3 debe ser único globalmente.

```bash
export TFSTATE_BUCKET="terraform-state-<tu-nombre>-<numero>"
export AWS_REGION="us-east-1"
```

Por ejemplo:

```bash
export TFSTATE_BUCKET="terraform-state-aldo-2026"
```

Crear el bucket en us-east-1:

```bash
aws s3api create-bucket --bucket "$TFSTATE_BUCKET" --region "$AWS_REGION"
```

### Habilitar versionado

```bash
aws s3api put-bucket-versioning \
  --bucket "$TFSTATE_BUCKET" \
  --versioning-configuration Status=Enabled
```

Verifica:

```bash
aws s3api get-bucket-versioning --bucket "$TFSTATE_BUCKET"
```

### Bloquear acceso público

```bash
aws s3api put-public-access-block \
  --bucket "$TFSTATE_BUCKET" \
  --public-access-block-configuration \
  BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true
```

### Habilitar cifrado SSE-S3

```bash
aws s3api put-bucket-encryption \
  --bucket "$TFSTATE_BUCKET" \
  --server-side-encryption-configuration '{"Rules":[{"ApplyServerSideEncryptionByDefault":{"SSEAlgorithm":"AES256"}}]}'
```

## 3. ¿Por qué el bucket se crea fuera de este Terraform?

No debemos intentar crear el bucket y utilizarlo como backend en la misma configuración:

```hcl
resource "aws_s3_bucket" "state" {
  bucket = "mi-bucket-state"
}

terraform {
  backend "s3" {
    bucket = aws_s3_bucket.state.bucket
  }
}
```

Esto no es válido porque el backend se inicializa antes de que Terraform pueda crear y evaluar los recursos de la configuración. Además, el backend no puede referenciar variables, locals ni atributos de recursos.

Por eso usamos un pequeño proceso de bootstrap: primero existe el bucket de state y después Terraform configura su backend para utilizarlo.

## 4. Configurar el backend

El archivo backend.tf contiene:

```hcl
terraform {
  backend "s3" {}
}
```

Los valores concretos se proporcionan mediante backend.hcl.

Copia el ejemplo:

```bash
cp backend.hcl.example backend.hcl
```

Edita backend.hcl y coloca el nombre real del bucket:

```hcl
bucket       = "terraform-state-aldo-2026"
key          = "14-remote-state-s3/exercise/terraform.tfstate"
region       = "us-east-1"
use_lockfile = true
```

Qué significa:

| Propiedad | Uso |
|---|---|
| bucket | Bucket S3 donde se guarda el state |
| key | Ruta del objeto de state dentro del bucket |
| region | Región del bucket |
| use_lockfile | Habilita locking mediante un archivo .tflock |

El backend S3 actual de Terraform soporta locking mediante use_lockfile y HashiCorp recomienda habilitar versionado del bucket para recuperación ante eliminaciones o errores humanos.

## 5. Inicializar Terraform

Desde esta carpeta:

```bash
terraform init -backend-config=backend.hcl
terraform validate
terraform plan
```

Observa que Terraform ya no utilizará el backend local por defecto.

## 6. Crear el recurso de prueba

main.tf crea otro bucket S3. Este bucket NO es el bucket donde se almacena el state; es simplemente el recurso que Terraform administra para probar el backend remoto.

Ejecuta:

```bash
terraform apply
```

Confirma con yes.

Después:

```bash
terraform state list
```

Debes ver:

```text
aws_s3_bucket.exercise
```

## 7. Comprobar el state en S3

Lista el prefijo:

```bash
aws s3 ls "s3://$TFSTATE_BUCKET/14-remote-state-s3/exercise/"
```

Debes encontrar:

```text
terraform.tfstate
```

También puedes comprobar el objeto directamente:

```bash
aws s3api head-object \
  --bucket "$TFSTATE_BUCKET" \
  --key "14-remote-state-s3/exercise/terraform.tfstate"
```

## 8. Comprobar versionado

Modifica un tag del recurso y vuelve a ejecutar:

```bash
terraform plan
terraform apply
```

Después:

```bash
aws s3api list-object-versions \
  --bucket "$TFSTATE_BUCKET" \
  --prefix "14-remote-state-s3/exercise/terraform.tfstate"
```

Deberías observar más de una versión del objeto.

## 9. Prueba de recuperación del state

Elimina solamente la carpeta local generada por Terraform:

```bash
rm -rf .terraform
```

Vuelve a inicializar:

```bash
terraform init -backend-config=backend.hcl
terraform state list
```

Terraform recuperará el estado desde S3.

> No elimines el bucket de state durante esta prueba.

## 10. Reto: segundo proyecto

Crea una segunda configuración Terraform que utilice el MISMO bucket de state, pero un key diferente:

```text
S3
└── terraform-state-<tu-nombre>/
    └── 14-remote-state-s3/
        ├── exercise/
        │   └── terraform.tfstate
        └── second-project/
            └── terraform.tfstate
```

El segundo proyecto debe administrar un recurso diferente.

Su backend podría ser:

```hcl
terraform {
  backend "s3" {}
}
```

Y su backend.hcl:

```hcl
bucket       = "terraform-state-aldo-2026"
key          = "14-remote-state-s3/second-project/terraform.tfstate"
region       = "us-east-1"
use_lockfile = true
```

El objetivo es demostrar que un mismo bucket puede almacenar múltiples estados, siempre que cada configuración utilice un key diferente.

NO reutilices el mismo key para dos proyectos independientes.

## 11. Preguntas

1. ¿Cuál es la diferencia entre un state local y un remote state?
2. ¿Por qué el bucket debe existir antes de terraform init?
3. ¿Qué función cumple key?
4. ¿Por qué el backend no puede usar var.bucket_name?
5. ¿Qué problema evita el state locking?
6. ¿Qué ventaja proporciona el versionado de S3?
7. ¿Cuál es la diferencia entre el bucket del state y el bucket creado por main.tf?
8. ¿Qué archivo adicional aparece con use_lockfile = true?
9. ¿Qué información sensible puede existir dentro de un Terraform State?

## 12. Limpieza

Cuando termines:

```bash
terraform destroy
```

En un entorno real, el bucket de Terraform State normalmente se conserva y se protege; no se elimina junto con cada stack.