# AWS 06 — Validaciones

## Objetivo
Evitar inputs inválidos antes de crear infraestructura.

## Escenario
Crearemos un CloudWatch Log Group cuya retención y ambiente estarán validados.

## Paso a paso
1. Revisa las validaciones.
2. Usa un environment válido.
3. Ejecuta plan.
4. Cambia environment a un valor inválido.
5. Ejecuta plan y analiza el error.
6. Haz lo mismo con retención.
7. Corrige los inputs.
8. Aplica y destruye.

## Explicación
La validation pertenece al contrato de entrada de la configuración. Permite fallar temprano antes de llegar al provider.

## Preguntas
- ¿Cuándo se ejecuta una validation?
- ¿Qué diferencia hay entre validation y OPA/Conftest?
- ¿Qué reglas deberían pertenecer al módulo?

## Solución
`main.tf` contiene la solución.