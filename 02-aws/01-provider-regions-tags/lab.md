# Lab AWS 01 — Provider, región y tags

## 🎯 Objetivo
Configurar AWS de forma parametrizable y aplicar tags comunes.

## 👨‍🏫 Guion del instructor
Cada alumno trabaja con su propia cuenta AWS. No colocar access keys en Terraform.

## 📝 Actividad
1. Ejecutar `aws sts get-caller-identity`.
2. Definir `aws_region`.
3. Configurar el provider AWS.
4. Configurar `default_tags`.
5. Crear el recurso del ejercicio.
6. Ejecutar `terraform init`, `fmt`, `validate` y `plan`.
7. Aplicar.
8. Revisar tags en AWS.
9. Destruir.

## 💬 Preguntas
- ¿Por qué versionar el provider?
- ¿Qué ventaja tiene `default_tags`?
- ¿Qué sucede si una cuenta no tiene permisos suficientes?

## 💡 Reto
Hacer que región y ambiente provengan de `.tfvars`.

## ✅ Solución
Consultar los archivos Terraform y `solution.md`.