# Lab AWS 05 — Introducción a multicloud

## 🎯 Objetivo
Comprender cómo una configuración Terraform puede coordinar providers diferentes.

## 👨‍🏫 Guion del instructor
El objetivo es mostrar composición, no crear una arquitectura productiva completa. Cada alumno debe tener acceso a sus propias cuentas.

## 📝 Actividad
1. Configurar AWS.
2. Configurar Azure.
3. Crear un recurso simple en cada cloud.
4. Parametrizar nombres y ambiente.
5. Ejecutar `terraform plan`.
6. Identificar qué provider gestiona cada resource.
7. Aplicar.
8. Revisar outputs.
9. Destruir.

## 💬 Preguntas
- ¿Qué es específico del provider?
- ¿Qué parte puede ser común?
- ¿Dónde conviene separar la lógica mediante módulos?

## 💡 Reto
Extraer cada cloud a un módulo independiente.