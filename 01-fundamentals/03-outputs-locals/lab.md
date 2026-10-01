# Lab 03 — Outputs y Locals

## 🎯 Objetivo
Utilizar `locals` para valores derivados y `outputs` para exponer información útil.

## 👨‍🏫 Guion del instructor
Explicar que un local no es un input del usuario: es un valor calculado dentro de la configuración. Un output es una interfaz de salida del módulo/root module.

## 📝 Actividad
1. Crear un recurso.
2. Definir un local para el nombre.
3. Definir un local para tags comunes.
4. Utilizar esos locals en el resource.
5. Crear outputs para nombre e ID/ARN.
6. Ejecutar `terraform apply`.
7. Ejecutar `terraform output`.

## 💬 Preguntas
- ¿Cuándo usarías local en lugar de variable?
- ¿Qué información no deberías imprimir como output?
- ¿Qué significa `sensitive = true`?

## 💡 Reto
Crear un segundo recurso que reutilice los mismos locals.

## ✅ Solución
Consultar los archivos Terraform de esta carpeta.