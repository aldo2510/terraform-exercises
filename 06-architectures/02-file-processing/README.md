# Arquitectura 02 — Procesamiento de archivos

## Objetivo

Construir un flujo serverless donde la llegada de un archivo desencadena procesamiento.

## AWS

S3 → Lambda → CloudWatch.

## Azure

Blob Storage → Azure Function → Application Insights/Monitor.

## Flujo

Usuario → Bucket/Blob → Function → Log

## Conceptos Terraform

- Event-driven architecture.
- Integración entre recursos.
- Variables.
- Outputs.
- IAM/RBAC mínimo necesario.
- Dependencias.

## Ejercicio

La función puede realizar una acción sencilla, como registrar el nombre del archivo recibido.

## Preguntas para el alumno

- ¿Qué dispara la función?
- ¿Dónde se almacenaría el archivo?
- ¿Qué permisos necesita la función?
- ¿Qué componente desacoplarías si el procesamiento creciera?

## Restricción de costos

No usar servidores permanentes. Mantener el procesamiento en servicios serverless.
