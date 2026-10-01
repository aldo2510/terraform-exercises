# Laboratorio 01 — AWS: Storage + Observabilidad

## Objetivo

Crear un bucket S3 privado, aplicar controles básicos y configurar una alarma de CloudWatch sobre el número de objetos.

## Flujo

Alumno → S3 → métricas de almacenamiento → CloudWatch Alarm

## Paso 1 — Autenticación

Configura AWS CLI con la cuenta de laboratorio.

## Paso 2 — Inicializar

Ejecuta:

    terraform init
    terraform fmt
    terraform validate

## Paso 3 — Reto del alumno

Antes de abrir main.tf, intenta definir:

- S3 bucket.
- Bloqueo de acceso público.
- Ownership controls.
- Versioning.
- Cifrado.
- CloudWatch Alarm.

## Paso 4 — Revisar la solución

La solución está en:

- versions.tf
- providers.tf
- variables.tf
- main.tf
- outputs.tf

## Paso 5 — Aplicar

    terraform plan
    terraform apply

## Paso 6 — Probar

Ejecuta terraform output y revisa el bucket en S3.

La métrica NumberOfObjects puede actualizarse con una frecuencia no inmediata. El objetivo es aprender a declarar la relación entre almacenamiento y observabilidad.

## Paso 7 — Limpiar

    terraform destroy

Si el bucket tiene objetos, elimínalos primero.

## Preguntas

1. ¿Por qué bloquear el acceso público?
2. ¿Qué configuración cambiarías entre dev y prod?
3. ¿Qué recurso depende de otro?
4. ¿Qué otras métricas te interesaría monitorear?