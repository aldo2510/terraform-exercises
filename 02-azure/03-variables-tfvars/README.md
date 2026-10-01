# Azure 03 — Variables, inputs y terraform.tfvars

## Objetivo
Aprender a parametrizar Azure y separar código de valores de configuración.

## Paso a paso
1. Revisa las variables de `main.tf`.
2. Copia `terraform.tfvars.example` a `terraform.tfvars`.
3. Completa tu subscription ID y un nombre único para Storage Account.
4. Cambia location, ambiente y replication.
5. Ejecuta plan.
6. Identifica los inputs.
7. Aplica y destruye.

## Explicación
Las variables son inputs de Terraform. `terraform.tfvars` proporciona valores sin modificar el código.

## Buenas prácticas
- Variables tipadas.
- Descripciones.
- Valores sensibles fuera del repositorio.
- Versionar solo el archivo example.

## Preguntas
- ¿Qué diferencia existe entre variables.tf y tfvars?
- ¿Qué variables deberían ser obligatorias?
- ¿Por qué no debemos versionar secretos?

## Solución
`main.tf` y `terraform.tfvars.example` muestran la solución de referencia.