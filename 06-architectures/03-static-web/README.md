# Arquitectura 03 — Sitio web estático

## Objetivo

Publicar una aplicación web estática utilizando servicios administrados.

## AWS

S3 + CloudFront.

## Azure

Blob Storage + Azure CDN/Front Door según disponibilidad y costo del entorno.

## Flujo

Usuario → CDN → Storage

## Conceptos Terraform

- Static website.
- CDN.
- Outputs.
- Variables.
- Seguridad y acceso al origen.
- Separación entre contenido y distribución.

## Ejercicio

Crear una página HTML mínima y publicarla como contenido estático.

## Preguntas

- ¿Por qué utilizar CDN?
- ¿Qué ocurre si eliminamos la CDN?
- ¿Dónde se almacena realmente el contenido?

## Restricción de costos

No utilizar VMs ni servicios de cómputo permanente.
