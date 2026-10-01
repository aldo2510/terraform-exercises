# Lab 02 — lifecycle e ignore_changes

## Objetivo
Entender cómo Terraform controla cambios administrados externamente.

## Pasos
1. Crear un recurso etiquetable.
2. Modificar una propiedad desde Terraform.
3. Agregar `ignore_changes` sobre un atributo seleccionado.
4. Cambiar dicho atributo fuera de Terraform.
5. Ejecutar plan y explicar por qué Terraform no propone revertirlo.
6. Retirar `ignore_changes` y volver a planificar.

## Discusión
Cuándo `ignore_changes` puede ocultar drift no deseado.