# Azure 05 — Data Sources

## Objetivo
Entender cómo consultar información existente en Azure sin crear el objeto consultado.

## Escenario
Usaremos `azurerm_client_config` para conocer la suscripción, tenant e identidad actuales.

## Paso a paso
1. Ejecuta `az login`.
2. Revisa el data source.
3. Ejecuta plan.
4. Ejecuta output.
5. Compara la subscription con `az account show`.
6. Explica la diferencia entre data y resource.

## Preguntas
- ¿Qué es un data source?
- ¿Un data source crea infraestructura?
- ¿Cuándo consultarías información del tenant?

## Solución
`main.tf` contiene la solución.