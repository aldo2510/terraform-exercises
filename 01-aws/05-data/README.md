# AWS 05 — Data Sources

## Objetivo
Entender la diferencia entre `resource` y `data`.

## Escenario
Consultaremos la cuenta AWS y la región actuales sin crear esos objetos.

## Paso a paso
1. Revisa los bloques `data`.
2. Ejecuta `terraform init`.
3. Ejecuta `terraform plan`.
4. Ejecuta `terraform output`.
5. Compara el account ID con `aws sts get-caller-identity`.
6. Explica por qué el data source no crea infraestructura.

## Preguntas
- ¿Qué diferencia hay entre data y resource?
- ¿Cuándo usarías un data source?
- ¿Por qué es útil consultar la identidad actual?

## Solución
`main.tf` contiene la solución.