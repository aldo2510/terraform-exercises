# Laboratorio 03 — Azure: sitio web estático

## Objetivo

Publicar una página HTML mediante Azure Storage Static Website, sin VM ni App Service.

## Flujo

Usuario → Azure Storage Static Website → index.html

## Paso 1 — Autenticación

    az login
    az account set --subscription "<SUBSCRIPTION_ID>"

Puedes entregar la suscripción mediante la variable de entorno TF_VAR_subscription_id.

## Paso 2 — Reto

Antes de mirar main.tf identifica:

- Resource Group.
- Storage Account.
- Static Website.
- Blob de index.html.
- Blob de 404.html.

## Paso 3 — Inicializar

    terraform init
    terraform fmt
    terraform validate
    terraform plan

## Paso 4 — Aplicar

    terraform apply

## Paso 5 — Probar

    terraform output -raw website_url

Abre la URL y verifica la página.

## Paso 6 — Modificar

Edita site/index.html y vuelve a ejecutar terraform plan y terraform apply. Observa cómo Terraform detecta el cambio de contenido.

## Paso 7 — Limpiar

    terraform destroy

## Archivos de solución

- versions.tf
- providers.tf
- variables.tf
- main.tf
- outputs.tf
- site/index.html
- site/404.html

## Preguntas

1. ¿Por qué no necesitamos una VM?
2. ¿Dónde vive realmente el contenido?
3. ¿Qué valor cambia entre ambientes?
4. ¿Qué ventaja tiene separar almacenamiento y cómputo?