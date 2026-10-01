# Lab 02 — Providers y Resources

## Objetivo
Entender cómo Terraform inicializa providers y cómo se modelan recursos.

## AWS
Crear un bucket S3 con tags y configuración básica.

## Azure
Crear un Resource Group y una Storage Account.

## Pasos
1. Declarar `terraform.required_providers`.
2. Configurar el provider correspondiente.
3. Ejecutar `terraform init`.
4. Crear el recurso.
5. Revisar `terraform plan`.
6. Aplicar.
7. Consultar el estado con `terraform state list` y `terraform show`.
8. Modificar una propiedad administrable y observar el plan.
9. Destruir.

## Conceptos
- Provider.
- Resource.
- Address del recurso.
- Dependencias implícitas.
- State.
- Create/update/destroy.