# lifecycle — AWS

## Objetivo
Comprender prevent_destroy, create_before_destroy e ignore_changes.

## Práctica
Aplica lifecycle a un bucket y observa el comportamiento del plan y destroy.

## Preguntas
- ¿Qué riesgo evita prevent_destroy?
- ¿Cuándo puede ser peligroso ignore_changes?

## Error intencional
Activa prevent_destroy y ejecuta terraform destroy.

## Solución
La configuración Terraform de este directorio representa la solución.
