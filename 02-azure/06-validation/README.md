# Azure 06 — Validaciones

## Objetivo
Validar inputs antes de intentar crear recursos Azure.

## Escenario
Validaremos el ambiente y el naming de un Storage Account.

## Paso a paso
1. Revisa las validaciones.
2. Ejecuta plan con valores correctos.
3. Cambia environment a un valor inválido.
4. Ejecuta plan y analiza el error.
5. Cambia el nombre a un valor inválido.
6. Corrige los valores.
7. Aplica y destruye.

## Explicación
Las validations forman parte del contrato de entrada de Terraform. No sustituyen políticas externas, pero permiten detectar errores temprano.

## Preguntas
- ¿Qué diferencia hay entre validation y policy?
- ¿Qué reglas deben validar los inputs?
- ¿Qué sucede antes de llamar al provider?

## Solución
`main.tf` contiene la solución.