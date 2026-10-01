# Solución — Multicloud AWS + Azure

La solución demuestra dos providers en un mismo root module.

## Buenas prácticas

- Configuración independiente de cada provider.
- Variables comunes solamente cuando tienen sentido.
- Outputs separados por cloud.
- Sin credenciales en Terraform.
- Preparación para extraer cada cloud a un módulo.

El objetivo es enseñar composición, no crear una abstracción que esconda las diferencias entre AWS y Azure.