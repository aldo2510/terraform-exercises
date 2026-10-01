# Solución — Variables y tfvars

La solución utiliza variables tipadas, validación para el ambiente y un mapa de tags.

## Archivos

- `main.tf`: configuración Terraform y valores derivados.
- `variables.tf`: inputs y validaciones.
- `terraform.tfvars.example`: ejemplo de parametrización.

## Buenas prácticas aplicadas

1. No se incluyen credenciales.
2. Los valores derivados se construyen mediante `locals`.
3. El ambiente está restringido mediante `validation`.
4. El archivo real `terraform.tfvars` no debe versionarse si contiene información sensible.

## Comandos

```bash
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform destroy
```