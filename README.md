# Terraform Exercises — AWS & Azure

Repositorio de ejercicios prácticos de Terraform orientado a una clase de infraestructura.

## 🎯 Enfoque

La organización está pensada para enseñar **el mismo concepto en AWS y Azure**, de forma paralela.

No se utilizan máquinas virtuales. Los laboratorios trabajan con servicios como:

- AWS S3
- AWS CloudWatch
- AWS Data Sources
- Azure Resource Groups
- Azure Storage
- Azure Data Sources
- Azure Blob Containers

## 🧭 Estructura actual de la clase

```text
01-aws/
  01-provider/
  02-resources/
  03-variables-tfvars/
  04-outputs/
  05-data/
  06-validation/
  07-metaarguments/

02-azure/
  01-provider/
  02-resources/
  03-variables-tfvars/
  04-outputs/
  05-data/
  06-validation/
  07-metaarguments/

03-multicloud/
  01-providers/
  02-inputs-outputs/
```

Cada laboratorio tiene su propio `README.md` y su `main.tf` de solución.

## 👨‍🏫 Cómo usarlo durante la sesión

La idea no es entregar primero la solución.

Para cada carpeta:

1. Explicar el concepto.
2. Mostrar el escenario.
3. Pedir a los alumnos que propongan la configuración.
4. Escribir o completar el Terraform durante la clase.
5. Ejecutar `terraform fmt`.
6. Ejecutar `terraform validate`.
7. Ejecutar `terraform plan`.
8. Analizar el plan.
9. Ejecutar `terraform apply`.
10. Revisar el resultado en AWS/Azure.
11. Mostrar el `main.tf` de referencia.
12. Comparar la solución de los alumnos con las buenas prácticas.

## 🧱 Conceptos cubiertos

| Concepto | AWS | Azure |
|---|---|---|
| Provider | ✅ | ✅ |
| Resources | ✅ | ✅ |
| Variables / Inputs | ✅ | ✅ |
| terraform.tfvars | ✅ | ✅ |
| Outputs | ✅ | ✅ |
| Data Sources | ✅ | ✅ |
| Validations | ✅ | ✅ |
| Meta-arguments | ✅ | ✅ |
| Multicloud | ✅ | ✅ |

## 🔐 Autenticación

Cada alumno utiliza su propia cuenta AWS y su propia suscripción Azure.

No colocar:

- AWS Access Key
- AWS Secret Key
- Client Secret
- Passwords
- Tokens

dentro de los archivos Terraform.

## 🧪 Comandos base

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

## 💡 Buenas prácticas

Los ejemplos utilizan:

- `required_providers` con versiones acotadas.
- Variables con tipos explícitos.
- Descripciones.
- Validaciones cuando corresponde.
- Outputs documentados.
- Referencias entre resources para crear dependencias explícitas.
- `for_each` cuando existe una colección con identidad estable.
- Sin credenciales hardcodeadas.
- Recursos pequeños y adecuados para laboratorios.

## 📚 Ejercicios propuestos

Consulta [ejercicios-propuestos.md](ejercicios-propuestos.md) para extensiones que los alumnos pueden resolver después de los laboratorios guiados.
