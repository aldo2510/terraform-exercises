# AWS 04 — Outputs

## Objetivo
Aprender a exponer información útil mediante outputs y entenderlos como interfaz de salida.

## Paso a paso
1. Revisa los outputs.
2. Ejecuta init, validate y plan.
3. Aplica.
4. Ejecuta `terraform output`.
5. Compara nombre, ARN y región.
6. Explica qué output consumiría otro módulo.
7. Destruye.

## Explicación
Los outputs permiten exponer atributos calculados por Terraform. Son especialmente importantes cuando un root module consume child modules.

## Preguntas
- ¿Output es lo mismo que variable?
- ¿Qué información conviene exponer?
- ¿Cuándo usarías `sensitive = true`?

## Solución
`main.tf` contiene la solución.