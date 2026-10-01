# Arquitecturas funcionales con Terraform

Cada laboratorio contiene un escenario, flujo arquitectónico, objetivos, preguntas, pasos de implementación, solución Terraform, prueba funcional y limpieza.

| Lab | Cloud | Arquitectura |
|---|---|---|
| 01 | AWS | S3 + CloudWatch |
| 02 | AWS | S3 → Lambda → CloudWatch Logs |
| 03 | Azure | Storage Static Website |
| 04 | Azure | HTTP Function serverless |
| 05 | Multicloud | SQS + Azure Storage Queue |
| 06 | Multicloud | DynamoDB + Azure Table Storage |

La secuencia está pensada para que primero se practique composición dentro de AWS, después dentro de Azure y finalmente se compare el mismo patrón lógico en dos clouds.

## Reglas

- Sin VMs.
- Sin Kubernetes.
- Configuraciones pequeñas.
- Destruir al terminar.
- Revisar precios y free tier vigente.

La solución está dentro de cada carpeta. El alumno debe intentar primero la arquitectura y luego comparar su implementación con los archivos Terraform.