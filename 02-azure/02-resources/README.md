# Azure 02 — Resources

## Objetivo
Aprender a declarar recursos Azure y observar dependencias entre resources.

## Escenario
Crearemos un Resource Group y un Storage Account. No se utilizan máquinas virtuales.

## Paso a paso
1. Revisa el Resource Group.
2. Revisa la referencia que usa Storage Account.
3. Ejecuta init, fmt, validate y plan.
4. Explica cada cambio.
5. Aplica.
6. Ejecuta `terraform state list`.
7. Revisa los recursos en Azure.
8. Destruye.

## Explicación
Terraform construye un grafo de dependencias a partir de las referencias entre recursos.

## Preguntas
- ¿Cómo detecta Terraform la dependencia?
- ¿Por qué Storage Account tiene restricciones de naming?
- ¿Qué información mantiene State?

## Solución
`main.tf` contiene la solución.