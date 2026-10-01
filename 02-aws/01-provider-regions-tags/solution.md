# Solución — AWS Provider, región y tags

La implementación parametriza la región y el ambiente, utiliza `default_tags` del provider y agrega un sufijo aleatorio para evitar colisiones de nombres de S3.

## Autenticación

No se agregan access keys al código. El alumno debe utilizar la cadena de credenciales estándar de AWS, por ejemplo AWS CLI/profile o variables de entorno.

## Flujo

```bash
aws sts get-caller-identity
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

## Buenas prácticas

- Provider versionado.
- Tags centralizados.
- Variables tipadas.
- Validación del ambiente.
- Nombre único para S3 mediante `random_id`.