# terraform import — AWS

## Objetivo
Incorporar a Terraform un bucket S3 que ya existe fuera del estado.

## Práctica
1. Crea manualmente un bucket S3 con un nombre único.
2. Declara el recurso en main.tf.
3. Ejecuta terraform import con el nombre real del bucket.
4. Ejecuta terraform plan y ajusta la configuración.

## Importante
El ID del recurso pertenece al entorno del alumno y no debe quedar hardcodeado en el repositorio.

## Preguntas
- ¿Importar crea el recurso?
- ¿Qué diferencia hay entre configuración y estado?
