# Lab Azure 01 — Resource Group y Storage Account

## 🎯 Objetivo
Crear recursos Azure y observar dependencias implícitas.

## 👨‍🏫 Guion del instructor
Cada alumno trabaja con su propia suscripción. La autenticación debe mantenerse fuera del código Terraform.

## 📝 Actividad
1. Ejecutar `az login`.
2. Ejecutar `az account show`.
3. Configurar AzureRM.
4. Crear Resource Group.
5. Crear Storage Account.
6. Ejecutar `init`, `fmt`, `validate` y `plan`.
7. Aplicar.
8. Revisar outputs.
9. Destruir.

## 💬 Preguntas
- ¿Cómo detecta Terraform la dependencia?
- ¿Por qué Storage Account tiene requisitos de naming?
- ¿Qué sucede si cambiamos location?

## 💡 Reto
Agregar tags obligatorios mediante variables y validation.