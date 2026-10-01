# Arquitectura 05 — Procesamiento asíncrono

## Objetivo

Construir una arquitectura donde el productor y el consumidor estén desacoplados mediante una cola.

## AWS

Aplicación → SQS → Lambda.

## Azure

Aplicación → Storage Queue → Azure Function.

## Flujo

Productor → Queue → Function → Log

## Conceptos Terraform

- Asynchronous architecture.
- Queues.
- Event-driven processing.
- Permisos.
- Retry y desacoplamiento.

## Ejercicio

Enviar un mensaje a la cola y procesarlo mediante una función.

## Preguntas

- ¿Qué problema resuelve la cola?
- ¿Qué pasa si el consumidor está temporalmente indisponible?
- ¿Por qué esta arquitectura desacopla los componentes?

## Restricción de costos

Utilizar únicamente servicios serverless y colas administradas.
