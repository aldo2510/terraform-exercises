# Soluciones

Este repositorio incluye soluciones de referencia para que el instructor pueda revisar el resultado esperado.

## Qué revisar en una solución

1. `terraform { required_version }` y providers versionados.
2. Providers sin credenciales hardcodeadas.
3. Variables con `description`, `type` y `validation` cuando corresponda.
4. Uso de `locals` para valores derivados.
5. Outputs descriptivos.
6. Naming y tags consistentes.
7. Uso correcto de `count`, `for_each`, `lifecycle` y expresiones.
8. Ausencia de secretos en el código.
9. Plan limpio antes de apply.
10. Limpieza de recursos al finalizar.

## Para el instructor

Los archivos `.tf` ubicados dentro de cada laboratorio son soluciones de referencia. Los `solution.md` explican el razonamiento y el flujo de ejecución.

Para una clase evaluada se recomienda crear una versión starter sin los archivos de solución y entregar la solución posteriormente.