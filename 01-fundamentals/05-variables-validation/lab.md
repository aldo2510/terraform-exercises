# Lab 05 — Variables y validaciones

## Objetivo
Aplicar validaciones para impedir configuraciones inválidas antes de llegar al cloud.

## Validaciones sugeridas
- Ambiente solo puede ser `dev`, `qa` o `prod`.
- Región no puede estar vacía.
- Lista de nombres debe tener al menos un elemento.
- Tags obligatorios deben incluir `environment` y `owner`.

## Pasos
1. Declarar variables con tipos.
2. Agregar bloques `validation`.
3. Ejecutar `terraform validate`.
4. Probar valores intencionalmente inválidos.
5. Corregir y ejecutar `plan`.
6. Crear recursos cuando todas las validaciones pasen.