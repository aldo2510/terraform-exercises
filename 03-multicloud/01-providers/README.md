# Multicloud 01 — Providers AWS y Azure

## Objetivo
Comprender cómo Terraform puede declarar más de un provider en una misma configuración.

## Escenario
Crearemos un recurso pequeño en AWS y otro en Azure. No se utilizan máquinas virtuales.

## Paso a paso
1. Autentica AWS y Azure.
2. Revisa los dos bloques de `required_providers`.
3. Revisa cada bloque `provider`.
4. Ejecuta `terraform init`.
5. Ejecuta `terraform plan`.
6. Identifica qué provider gestiona cada resource.
7. Aplica.
8. Revisa los outputs.
9. Destruye.

## Explicación
Multicloud no significa que AWS y Azure deban tener una implementación idéntica. El root puede coordinar ambos providers y mantener las diferencias específicas.

## Preguntas
- ¿Qué parte es común?
- ¿Qué parte es específica de cada cloud?
- ¿Cuándo conviene separar AWS y Azure en módulos?

## Solución
`main.tf` contiene la solución.