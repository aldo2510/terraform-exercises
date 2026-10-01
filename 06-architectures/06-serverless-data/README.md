# Laboratorio 06 — Multicloud: persistencia administrada

## Objetivo

Comparar una arquitectura de persistencia administrada en AWS y Azure.

## Arquitectura

AWS:
Aplicación → DynamoDB

Azure:
Aplicación → Azure Table Storage

La práctica se enfoca en infraestructura y modelado Terraform; no se necesita una aplicación permanente.

## Paso 1 — Preparar clouds

Configura AWS CLI y Azure CLI.

Azure:

    az login
    az account set --subscription "<SUBSCRIPTION_ID>"

## Paso 2 — Analizar

Identifica:

- tabla NoSQL en AWS;
- almacenamiento de tablas en Azure;
- configuración de capacidad;
- nombre e identidad de cada recurso.

## Paso 3 — Inicializar

    terraform init
    terraform fmt
    terraform validate
    terraform plan

## Paso 4 — Aplicar

    terraform apply

AWS utiliza DynamoDB con PAY_PER_REQUEST para evitar provisionar capacidad fija.

Azure crea un Storage Account LRS y una tabla administrada.

## Paso 5 — Revisar outputs

    terraform output

Compara los nombres de las tablas.

## Paso 6 — Debate arquitectónico

1. ¿Qué responsabilidad comparten DynamoDB y Table Storage?
2. ¿Qué diferencias de modelado existen?
3. ¿Qué configuración de capacidad cambia entre providers?
4. ¿Cómo diseñarías un módulo para abstraer una tabla lógica?
5. ¿Qué información debería permanecer específica de cada cloud?

## Paso 7 — Limpiar

    terraform destroy

## Archivos de solución

- versions.tf
- providers.tf
- variables.tf
- main.tf
- outputs.tf

## Nota

La arquitectura es intencionalmente pequeña. El objetivo es comparar capacidades administradas y providers, no construir una plataforma de datos completa.