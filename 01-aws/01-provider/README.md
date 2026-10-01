# AWS 01 — Provider

## Objetivo
Entender qué es un provider y cómo Terraform se conecta con AWS.

## Explicación
El provider implementa la comunicación entre Terraform y la API de AWS. El código del laboratorio no contiene credenciales.

## Paso a paso
1. Verifica tu identidad con `aws sts get-caller-identity`.
2. Revisa el bloque `required_providers`.
3. Revisa el bloque `provider "aws"`.
4. Ejecuta `terraform init`.
5. Ejecuta `terraform providers`.
6. Ejecuta `terraform validate`.

## Qué debes explicar en clase
- Terraform Core vs provider.
- Versionado del provider.
- Autenticación fuera del código.
- Región y configuración del provider.

## Preguntas
- ¿Quién conoce la API de AWS: Terraform Core o el provider?
- ¿Por qué no ponemos access keys en el .tf?
- ¿Qué sucede si cambiamos la región?

## Solución
`main.tf` contiene la solución de referencia.