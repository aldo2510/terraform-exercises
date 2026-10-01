# Arquitectura 01 — Storage + Observabilidad

## Objetivo

Construir una arquitectura funcional mínima para almacenar objetos y disponer de observabilidad básica.

## AWS

S3 + CloudWatch.

## Azure

Storage Account + Azure Monitor/diagnostic settings.

## Flujo

Usuario → Storage → métricas/logs

## Conceptos Terraform

- Composición de recursos.
- Variables y locals.
- Outputs.
- Dependencias.
- Tags.
- Observabilidad básica.

## Preguntas para el alumno

1. ¿Qué recurso representa el almacenamiento?
2. ¿Qué información sería útil monitorear?
3. ¿Qué configuración debería ser variable entre ambientes?

## Error intencional

Crear el almacenamiento sin una política clara de acceso y luego revisar qué controles mínimos deberían existir.

## Restricción de costos

No utilizar VMs ni bases de datos. Usar únicamente recursos administrados de almacenamiento y monitoreo.
