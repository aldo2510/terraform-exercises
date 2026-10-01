# Laboratorio 02 — AWS: procesamiento de archivos

## Objetivo

Construir un flujo event-driven donde la creación de un objeto en S3 invoque una Lambda y la ejecución quede registrada en CloudWatch Logs.

## Flujo

Archivo → S3 → Lambda → CloudWatch Logs

## Paso 1 — Autenticación

Configura AWS CLI con la cuenta de laboratorio.

## Paso 2 — Analizar el reto

Identifica los recursos necesarios:

1. S3.
2. IAM Role.
3. Lambda.
4. Permiso para que S3 invoque Lambda.
5. S3 notification.
6. CloudWatch Log Group.

## Paso 3 — Inicializar

    terraform init
    terraform fmt
    terraform validate

## Paso 4 — Revisar la solución

Archivos principales:

- versions.tf
- providers.tf
- variables.tf
- main.tf
- outputs.tf
- lambda_function.py

El provider Archive genera el ZIP de Lambda durante terraform.

## Paso 5 — Aplicar

    terraform plan
    terraform apply

## Paso 6 — Probar

Obtén el nombre del bucket:

    terraform output -raw bucket_name

Crea un archivo y súbelo:

    echo "hola terraform" > prueba.txt
    aws s3 cp prueba.txt s3://NOMBRE_DEL_BUCKET/

Revisa los logs de Lambda en CloudWatch.

## Paso 7 — Analizar

Preguntas para el alumno:

- ¿Por qué existe aws_lambda_permission?
- ¿Por qué Lambda necesita un IAM Role?
- ¿Qué componente dispara el procesamiento?
- ¿Qué ocurre si el consumidor falla?

## Paso 8 — Limpiar

    aws s3 rm s3://NOMBRE_DEL_BUCKET --recursive
    terraform destroy