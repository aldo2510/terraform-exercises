# Lab 01 — State y backend remoto

## Objetivo
Comprender dónde vive Terraform State y por qué el state no debe tratarse como un archivo cualquiera.

## Pasos
1. Ejecutar primero con backend local.
2. Revisar `terraform.tfstate` y `terraform state list`.
3. Seleccionar un backend remoto apropiado para AWS o Azure.
4. Migrar el state siguiendo el procedimiento oficial del backend.
5. Verificar que los recursos existentes no se recrean.
6. Ejecutar plan.
7. Documentar ventajas y riesgos.

## Nota
El laboratorio debe adaptarse a la cuenta del alumno y no compartir un state entre alumnos.