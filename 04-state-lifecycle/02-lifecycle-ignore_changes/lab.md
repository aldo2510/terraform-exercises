# Lab State 02 — lifecycle e ignore_changes

## 🎯 Objetivo
Comprender cómo `lifecycle` modifica el comportamiento de Terraform.

## 👨‍🏫 Guion del instructor
Mostrar el plan antes y después de introducir `ignore_changes`.

## 📝 Actividad
1. Crear el recurso.
2. Aplicar.
3. Modificar un atributo fuera de Terraform.
4. Ejecutar `plan`.
5. Agregar `ignore_changes`.
6. Ejecutar nuevamente `plan`.
7. Comparar resultados.
8. Retirar `ignore_changes`.
9. Ejecutar `plan` nuevamente.

## 💬 Preguntas
- ¿Qué problema resuelve ignore_changes?
- ¿Cuándo puede ocultar drift?
- ¿Qué diferencia hay entre ignorar un atributo y dejar de administrar un recurso?

## 💡 Reto
Probar `prevent_destroy` y `create_before_destroy`.