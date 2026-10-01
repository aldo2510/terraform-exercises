# Multicloud 02 — Inputs y Outputs

## Objetivo
Entender qué información puede ser común entre AWS y Azure y cómo exponer resultados separados.

## Escenario
Usaremos un conjunto pequeño de inputs comunes: nombre lógico y ambiente. Cada cloud tendrá su propia implementación.

## Paso a paso
1. Revisa las variables.
2. Identifica los inputs comunes.
3. Revisa qué atributos siguen siendo específicos de AWS y Azure.
4. Ejecuta plan.
5. Aplica.
6. Ejecuta `terraform output`.
7. Explica por qué los outputs están separados por cloud.
8. Destruye.

## Explicación
Una buena abstracción multicloud no intenta esconder todas las diferencias. Los inputs comunes deben representar conceptos realmente comunes.

## Preguntas
- ¿Qué significa input en Terraform?
- ¿Qué significa output?
- ¿Qué atributos son realmente comunes?
- ¿Cómo llevarías esto a módulos?

## Solución
`main.tf` contiene la solución.