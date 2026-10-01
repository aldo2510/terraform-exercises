# Arquitectura 04 — API Serverless

## Objetivo

Construir una API HTTP pequeña sin administrar servidores.

## AWS

API Gateway → Lambda → CloudWatch.

## Azure

API Management → Azure Function → Application Insights/Monitor.

## Flujo

Cliente → API → Function → respuesta

## Ejercicio

Crear un endpoint sencillo que devuelva una respuesta JSON.

## Conceptos Terraform

- API Gateway/API Management.
- Functions/Lambda.
- Integración de servicios.
- Variables.
- Outputs.
- Observabilidad.

## Preguntas

- ¿Dónde ocurre el procesamiento?
- ¿Qué componente recibe la petición HTTP?
- ¿Cómo escalaría esta arquitectura?

## Restricción de costos

No utilizar VMs, Kubernetes ni balanceadores dedicados.
