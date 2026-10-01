# Arquitecturas funcionales con Terraform

Esta sección reúne arquitecturas pequeñas y funcionales para pasar de ejercicios aislados a soluciones que representan casos de uso reales.

## Principios

- Costos bajos: evitar VMs, Kubernetes y servicios que permanezcan encendidos.
- Componentes administrados y pequeños.
- Cada arquitectura debe poder destruirse completamente al terminar.
- El objetivo es aprender composición de recursos, no construir una plataforma enterprise completa.

## Arquitecturas propuestas

| Laboratorio | AWS | Azure | Caso funcional |
|---|---|---|---|
| 01 | S3 + CloudWatch | Storage Account + Monitor | Almacenamiento y observabilidad básica |
| 02 | S3 + Lambda | Storage + Function | Procesamiento de archivos |
| 03 | S3 + CloudFront | Blob Storage + CDN | Sitio web estático |
| 04 | API Gateway + Lambda | API Management + Function | API serverless |
| 05 | SQS + Lambda | Storage Queue + Function | Procesamiento asíncrono |
| 06 | DynamoDB + Lambda | Cosmos DB + Function | API serverless con persistencia |

> Los laboratorios deben ejecutarse de forma aislada y destruirse al finalizar. Algunos servicios pueden generar cargos aunque el uso sea pequeño; revisar siempre precios y free tier vigente de la cuenta antes de aplicar.
