# AWS 02 — Resources

## Objetivo
Aprender a declarar un recurso real de AWS y entender la relación entre resource, plan y State.

## Escenario
Crearemos un bucket S3 privado. No se utilizan máquinas virtuales.

## Paso a paso
1. Revisa el bloque `resource "aws_s3_bucket"`.
2. Ejecuta `terraform init`.
3. Ejecuta `terraform fmt`.
4. Ejecuta `terraform validate`.
5. Ejecuta `terraform plan`.
6. Explica cada cambio del plan.
7. Ejecuta `terraform apply`.
8. Ejecuta `terraform state list`.
9. Revisa el bucket en AWS.
10. Ejecuta `terraform destroy`.

## Explicación para la clase
Un resource representa infraestructura administrada por Terraform. El provider sabe cómo traducir esa declaración a llamadas contra AWS.

## Preguntas
- ¿Qué es un resource address?
- ¿Qué información mantiene State?
- ¿Qué diferencia existe entre resource y provider?

## Solución
`main.tf` es la solución completa.