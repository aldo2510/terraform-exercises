# AWS Lab 01 — Provider, región y tags

## Objetivo
Configurar el provider AWS de forma parametrizable.

## Pasos
1. Definir versión del provider AWS.
2. Parametrizar región.
3. Crear locals para tags corporativos.
4. Crear un S3 Bucket.
5. Aplicar tags estándar.
6. Ejecutar plan para comprobar que los tags se propagan.
7. Destruir.

## Extensión
Permitir cambiar entre dos regiones mediante `terraform.tfvars`.