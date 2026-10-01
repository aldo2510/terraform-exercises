# AWS 07 — Meta-arguments

## Objetivo
Practicar `for_each` y comprender cómo Terraform identifica múltiples instances.

## Escenario
Crearemos varios buckets a partir de un mapa.

## Paso a paso
1. Revisa la variable `buckets`.
2. Revisa `for_each`.
3. Ejecuta plan.
4. Aplica.
5. Ejecuta `terraform state list`.
6. Agrega una key al mapa.
7. Ejecuta plan nuevamente.
8. Analiza qué recurso nuevo aparecerá.
9. Destruye.

## Explicación
`for_each` permite crear instances con una identidad estable basada en keys. Es diferente de `count`, que utiliza índices.

## Preguntas
- ¿Cuándo usar count?
- ¿Cuándo usar for_each?
- ¿Qué pasa si cambia una key?

## Solución
`main.tf` contiene la solución.