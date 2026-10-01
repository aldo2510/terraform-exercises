# Azure 07 — Meta-arguments

## Objetivo
Practicar `for_each` para crear varios recursos relacionados.

## Escenario
Crearemos varios Blob Containers a partir de un mapa.

## Paso a paso
1. Crea primero el Resource Group y Storage Account.
2. Revisa el mapa `containers`.
3. Revisa `for_each`.
4. Ejecuta plan.
5. Aplica.
6. Ejecuta `terraform state list`.
7. Agrega una nueva key al mapa.
8. Ejecuta plan nuevamente.
9. Analiza el nuevo resource address.
10. Destruye.

## Explicación
`for_each` crea instances identificadas por keys estables. Esto es útil cuando cada objeto tiene una identidad propia.

## Preguntas
- ¿Qué diferencia hay entre count y for_each?
- ¿Qué pasa si cambia una key?
- ¿Cómo se refleja cada instancia en State?

## Solución
`main.tf` contiene la solución.