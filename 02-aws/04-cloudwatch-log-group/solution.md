# Solución — CloudWatch Log Group

La solución parametriza la retención y utiliza una validación para aceptar únicamente valores definidos para el laboratorio.

El objetivo es observar cómo una variable modifica el plan sin modificar el resource block.

## Comandos

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform destroy
```