# Solución — Resource Group + Storage Account

La solución utiliza AzureRM mediante la autenticación de Azure CLI o la cadena de credenciales soportada por AzureRM. No se almacenan client secrets en el repositorio.

El Storage Account recibe un sufijo aleatorio porque su nombre debe ser globalmente único.

## Flujo

```bash
az account show
az login
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

## Buenas prácticas

- Variables tipadas.
- Validación del naming.
- Tags.
- Dependencia implícita Resource Group → Storage Account.
- Sin secretos en `.tfvars`.