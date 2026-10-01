# Solución — SNS y count condicional

La solución crea un SNS Topic y utiliza `count` para que la subscription sea opcional.

## Conceptos para explicar

- `count`
- recursos opcionales
- expresiones condicionales
- resource addresses
- variables nullable

## Flujo

```bash
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform destroy
```

El endpoint de email es opcional y no se guarda ningún dato de autenticación en el repositorio.