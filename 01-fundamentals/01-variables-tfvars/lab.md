# Lab 01 — Variables y terraform.tfvars

## 🎯 Objetivo
Aprender a parametrizar una configuración Terraform sin hardcodear valores y comprender la separación entre código y configuración.

## 👨‍🏫 Guion del instructor
Explicar primero que Terraform tiene inputs, lógica y outputs. Mostrar que una misma configuración puede ejecutarse para `dev`, `qa` y `prod` cambiando valores, no el código.

## 🧩 Escenario
Construiremos un componente simple cuyo nombre, ambiente y tags serán configurables.

## 📝 Actividad
1. Crear `variables.tf`.
2. Definir `project_name` como `string`.
3. Definir `environment` como `string`.
4. Definir `tags` como `map(string)`.
5. Crear `terraform.tfvars.example`.
6. Crear el recurso del laboratorio usando las variables.
7. Ejecutar `terraform init`.
8. Ejecutar `terraform fmt -recursive`.
9. Ejecutar `terraform validate`.
10. Ejecutar `terraform plan`.
11. Aplicar y revisar los outputs.
12. Ejecutar `terraform destroy`.

## 💬 Preguntas para los alumnos
- ¿Qué diferencia hay entre una variable y un local?
- ¿Qué ocurre si no definimos una variable sin default?
- ¿Por qué no debemos guardar credenciales en `tfvars`?
- ¿Qué ventaja tiene `terraform.tfvars.example`?

## 🔎 Validación
Cambiar el ambiente a `qa` y comprobar que el plan modifica únicamente lo necesario.

## 💡 Reto
Crear una variable `application` de tipo `object` con nombre, owner y version.

## ✅ Solución
Revisar los archivos `.tf` y `solution.md` de esta carpeta.