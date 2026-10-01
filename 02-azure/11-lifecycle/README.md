# lifecycle — Azure

## Objetivo
Comprender prevent_destroy, create_before_destroy e ignore_changes en Azure.

## Práctica
Aplica lifecycle a un Resource Group y observa el comportamiento de destroy.

## Preguntas
- ¿Qué riesgo evita prevent_destroy?
- ¿Cuándo documentarías ignore_changes?

## Error intencional
Activa prevent_destroy y ejecuta terraform destroy.

## Solución
La configuración Terraform de este directorio representa la solución.
