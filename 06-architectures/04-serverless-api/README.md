# Laboratorio 04 — Azure: API serverless

## Objetivo

Crear un endpoint HTTP sencillo usando Azure Functions. Se utiliza el plan de consumo para mantener el laboratorio pequeño.

## Flujo

Cliente → Azure Function → respuesta JSON

## Paso 1 — Autenticación

    az login
    az account set --subscription "<SUBSCRIPTION_ID>"

## Paso 2 — Reto

Identifica:

- Resource Group.
- Storage Account requerido por la Function App.
- Service Plan.
- Function App.
- Function HTTP trigger.

## Paso 3 — Inicializar

    terraform init
    terraform fmt
    terraform validate
    terraform plan

## Paso 4 — Aplicar

    terraform apply

## Paso 5 — Probar

    terraform output -raw function_url

Abre la URL obtenida. La función devuelve una respuesta JSON sencilla.

## Paso 6 — Analizar

Revisa cómo Terraform compone:

Storage Account → Function App → Function HTTP

Preguntas:

1. ¿Por qué una Function necesita almacenamiento?
2. ¿Qué responsabilidad tiene el Service Plan?
3. ¿Dónde está definida la configuración del trigger?
4. ¿Qué cambiarías para proteger el endpoint?

## Paso 7 — Limpiar

    terraform destroy

## Archivos de solución

- versions.tf
- providers.tf
- variables.tf
- main.tf
- outputs.tf

## Nota de costos

El laboratorio utiliza servicios serverless, pero debes revisar el pricing vigente de Azure antes de ejecutarlo y destruirlo al terminar.