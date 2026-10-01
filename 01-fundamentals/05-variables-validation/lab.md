# Lab 05 — Variables y validaciones

## 🎯 Objetivo
Evitar configuraciones inválidas antes de crear infraestructura.

## 👨‍🏫 Guion del instructor
Mostrar que las validaciones son una primera barrera de calidad y que deben expresar reglas del dominio, no lógica innecesariamente compleja.

## 📝 Actividad
1. Crear una variable `environment`.
2. Aceptar únicamente `dev`, `qa` y `prod`.
3. Validar un nombre mediante expresión regular.
4. Validar una lista no vacía.
5. Crear un mapa de tags obligatorios.
6. Probar valores inválidos.
7. Ejecutar `terraform validate` y `terraform plan`.

## 💬 Preguntas
- ¿Qué diferencia hay entre error de sintaxis y error de validación?
- ¿Qué reglas conviene validar en Terraform?
- ¿Qué reglas deberían vivir en una política externa?

## 💡 Reto
Validar un object completo con varias propiedades.