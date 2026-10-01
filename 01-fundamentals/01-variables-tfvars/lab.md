# Lab 01 — Variables, tfvars y parametrización

## Objetivo
Construir una configuración Terraform reutilizable aprendiendo variables, tipos, valores por defecto, archivos `.tfvars` y precedencia de valores.

## Cloud
AWS y Azure, trabajando con una etiqueta/nombre común para los recursos.

## Pasos
1. Crear `main.tf`, `variables.tf`, `terraform.tfvars` y `outputs.tf`.
2. Declarar variables para nombre del proyecto, ambiente, región, etiquetas y costo máximo.
3. Usar tipos explícitos: `string`, `number`, `bool`, `list(string)` y `map(string)`.
4. Configurar el provider de AWS o Azure mediante variables.
5. Crear un recurso pequeño y de bajo costo:
   - AWS: S3 Bucket.
   - Azure: Resource Group y Storage Account.
6. Sobrescribir valores con otro archivo `.tfvars`.
7. Probar precedencia usando `-var`, `-var-file` y variables de entorno.
8. Ejecutar `terraform fmt`, `validate`, `plan` y `apply`.
9. Destruir los recursos al terminar.

## Entregable
La configuración debe permitir cambiar ambiente y nombres sin modificar los archivos de recursos.

## Importante
No guardar credenciales cloud, secretos ni archivos `.tfstate` en Git.