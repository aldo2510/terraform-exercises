# AWS 03 — Variables, inputs y terraform.tfvars

## Objetivo
Aprender a parametrizar una configuración mediante variables y separar código de valores.

## Paso a paso
1. Revisa las variables de `main.tf`.
2. Copia `terraform.tfvars.example` a `terraform.tfvars`.
3. Cambia proyecto y ambiente.
4. Ejecuta `terraform plan`.
5. Identifica qué valores son inputs.
6. Ejecuta `terraform apply`.
7. Ejecuta `terraform output`.
8. Destruye el recurso.

## Explicación
Una variable es un input de Terraform. `terraform.tfvars` proporciona valores para esos inputs. El código no debería cambiar cuando cambia el ambiente.

## Buenas prácticas
- Tipar variables.
- Documentarlas.
- No guardar secretos en Git.
- Versionar solamente `terraform.tfvars.example`.

## Preguntas
- ¿Qué diferencia hay entre variables.tf y tfvars?
- ¿Qué pasa si falta una variable requerida?
- ¿Qué valores deberían venir del entorno y no del repositorio?

## Solución
`main.tf` contiene la solución y `terraform.tfvars.example` muestra los valores esperados.