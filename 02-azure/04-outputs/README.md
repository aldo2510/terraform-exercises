# Azure 04 — Outputs

## Objetivo
Aprender a exponer información útil de los recursos Azure mediante outputs.

## Paso a paso
1. Revisa los outputs.
2. Ejecuta plan.
3. Aplica.
4. Ejecuta `terraform output`.
5. Compara IDs, nombres y location.
6. Explica cuál output consumiría otro módulo.

## Explicación
Los outputs son la interfaz de salida del root module o de un child module.

## Preguntas
- ¿Output es lo mismo que variable?
- ¿Qué información conviene exponer?
- ¿Qué información debería ser sensitive?

## Solución
`main.tf` contiene la solución.