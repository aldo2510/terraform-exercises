# Laboratorio 05 — Multicloud: procesamiento asíncrono

## Objetivo

Implementar el mismo patrón lógico de cola en AWS y Azure y comparar cómo Terraform representa la misma capacidad con diferentes providers.

## Arquitectura

AWS:
Productor → SQS → consumidor

Azure:
Productor → Storage Queue → consumidor

El laboratorio provisiona las colas. El consumidor se deja como siguiente ejercicio para concentrar la sesión en infraestructura y desacoplamiento.

## Paso 1 — Preparar las dos nubes

AWS: configura AWS CLI.

Azure:

    az login
    az account set --subscription "<SUBSCRIPTION_ID>"

## Paso 2 — Analizar

Antes de mirar main.tf, identifica qué cambia y qué se mantiene igual entre AWS y Azure.

## Paso 3 — Inicializar

    terraform init
    terraform fmt
    terraform validate
    terraform plan

## Paso 4 — Aplicar

    terraform apply

Terraform creará:

- una cola SQS en AWS;
- una Storage Queue en Azure;
- el Storage Account necesario en Azure;
- el Resource Group de Azure.

## Paso 5 — Revisar outputs

    terraform output

Compara las URLs de las dos colas.

## Paso 6 — Debate

Preguntas:

1. ¿Qué parte del patrón es igual?
2. ¿Qué nombres de recursos cambian?
3. ¿Qué provider gestiona cada componente?
4. ¿Cómo reutilizarías variables comunes?
5. ¿Cómo diseñarías un módulo multicloud?

## Paso 7 — Limpiar

    terraform destroy

## Archivos de solución

- versions.tf
- providers.tf
- variables.tf
- main.tf
- outputs.tf

## Objetivo pedagógico

Este ejercicio no busca conectar AWS y Azure. Busca que el alumno aprenda a expresar un mismo patrón arquitectónico en dos providers y pueda comparar diferencias de implementación.