# AWS Lab 05 — Despliegue multicloud AWS + Azure

## Objetivo
Practicar dos providers dentro del mismo proyecto Terraform.

## Arquitectura
Crear almacenamiento base en ambas nubes:
- AWS: S3.
- Azure: Storage Account.

## Pasos
1. Declarar ambos providers.
2. Parametrizar región AWS y ubicación Azure.
3. Declarar variables comunes.
4. Crear recursos en ambos providers.
5. Crear outputs separados.
6. Ejecutar `init`, `validate`, `plan` y `apply`.
7. Revisar el grafo con `terraform graph`.
8. Destruir ambos lados.

## Reto
Hacer que los nombres se generen a partir de un mismo `project` y `environment`.