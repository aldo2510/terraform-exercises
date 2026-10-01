# count vs for_each — AWS

## Objetivo
Comparar count y for_each y entender la estabilidad de las direcciones de recursos.

## Práctica
Crea buckets con ambos enfoques. Elimina un elemento y revisa el plan.

## Preguntas
- ¿Cuándo prefieres count?
- ¿Cuándo for_each representa mejor la identidad?

## Error intencional
Elimina un elemento central de una lista usada por count y analiza el plan.

## Solución
La configuración Terraform de este directorio representa la solución.
