# terraform import — Azure

## Objetivo
Incorporar a Terraform un Resource Group de Azure que ya existe fuera del estado.

## Práctica
1. Crea manualmente un Resource Group.
2. Declara el recurso en main.tf.
3. Ejecuta terraform import usando el Resource ID real.
4. Ejecuta terraform plan y ajusta la configuración.

## Importante
El Resource ID pertenece al entorno del alumno y no debe quedar hardcodeado en el repositorio.

## Preguntas
- ¿Importar crea el recurso?
- ¿Por qué la configuración debe representar el recurso existente?
