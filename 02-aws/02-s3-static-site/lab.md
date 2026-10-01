# Lab AWS 02 — S3 y controles de acceso

## 🎯 Objetivo
Crear un bucket S3 aplicando configuraciones básicas de seguridad.

## 👨‍🏫 Guion del instructor
El objetivo no es simplemente crear un bucket, sino enseñar que una configuración IaC debe incorporar controles seguros por defecto.

## 📝 Actividad
1. Crear un bucket con nombre parametrizado.
2. Configurar ownership controls.
3. Configurar public access block.
4. Agregar tags.
5. Ejecutar `plan`.
6. Aplicar.
7. Revisar la configuración en AWS.
8. Destruir.

## 💬 Preguntas
- ¿Por qué no debemos habilitar acceso público por defecto?
- ¿Qué problema resuelve ownership controls?
- ¿Qué parte de la configuración representa seguridad?

## 💡 Reto
Agregar versioning y una lifecycle rule.