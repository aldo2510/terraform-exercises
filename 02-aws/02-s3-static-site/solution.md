# Solución — S3

La solución crea un bucket privado y configura ownership controls y public access block.

> Para un laboratorio de infraestructura es preferible comenzar con almacenamiento privado. Si se quiere estudiar hosting público, hacerlo como un ejercicio separado y documentar explícitamente el riesgo.

## Flujo

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform destroy
```

La solución evita credenciales y secretos dentro de Terraform.