# Solución — DynamoDB

Se utiliza `PAY_PER_REQUEST` para evitar gestionar capacidad provisionada en un laboratorio.

La clave primaria se declara mediante `hash_key` y el atributo correspondiente.

## Validación

El nombre de la tabla se valida antes del plan.

## Verificación

```bash
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```