# Arquitectura 06 — API Serverless con persistencia

## Objetivo

Construir una arquitectura funcional que combine API, procesamiento serverless y una base de datos administrada.

## AWS

API Gateway → Lambda → DynamoDB.

## Azure

API Management → Azure Function → Cosmos DB.

## Flujo

Cliente → API → Function → NoSQL

## Ejercicio

Implementar conceptualmente una operación sencilla de lectura/escritura.

## Conceptos Terraform

- Composición de módulos y recursos.
- Variables.
- Outputs.
- IAM/RBAC.
- Persistencia.
- Arquitectura serverless.

## Preguntas

- ¿Por qué utilizar NoSQL en este ejemplo?
- ¿Qué responsabilidad tiene cada componente?
- ¿Dónde colocarías validaciones y autorización?

## Restricción de costos

Usar configuraciones mínimas de laboratorio y evitar cargas permanentes o escalamiento innecesario.
