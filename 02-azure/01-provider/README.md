# Azure 01 — Provider

## Objetivo
Entender qué es el provider AzureRM y cómo Terraform se conecta con una suscripción Azure.

## Paso a paso
1. Ejecuta `az login`.
2. Ejecuta `az account show`.
3. Revisa `required_providers`.
4. Revisa `provider "azurerm"`.
5. Ejecuta `terraform init`.
6. Ejecuta `terraform providers`.
7. Ejecuta `terraform validate`.

## Explicación
El provider implementa la comunicación con Azure Resource Manager. La autenticación debe venir del entorno y no de credenciales hardcodeadas.

## Preguntas
- ¿Qué hace AzureRM?
- ¿Dónde debe vivir la autenticación?
- ¿Qué diferencia hay entre subscription y resource group?

## Solución
`main.tf` contiene la solución.