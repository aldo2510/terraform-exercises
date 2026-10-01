# Lab 03 — Outputs y Locals

## Objetivo
Usar outputs para exponer información útil y locals para evitar duplicación.

## Pasos
1. Crear un recurso de almacenamiento.
2. Definir locals para nombre, ambiente y tags.
3. Reutilizar los locals en múltiples recursos.
4. Definir outputs para nombre, ARN/ID y endpoint cuando esté disponible.
5. Aplicar.
6. Ejecutar `terraform output`.
7. Probar un output sensible y explicar por qué no evita almacenar el valor en state.

## Variación
Crear un segundo recurso que reutilice los mismos locals.