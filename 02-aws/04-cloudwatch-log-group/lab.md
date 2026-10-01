# Lab AWS 04 — CloudWatch Log Group

## 🎯 Objetivo
Parametrizar observabilidad y practicar validaciones.

## 👨‍🏫 Guion del instructor
Mostrar cómo una variable permite modificar la retención sin duplicar el resource.

## 📝 Actividad
1. Definir proyecto y retención.
2. Validar los valores permitidos.
3. Crear el Log Group.
4. Ejecutar `terraform plan`.
5. Aplicar.
6. Cambiar la retención.
7. Comparar el nuevo plan.
8. Destruir.

## 💬 Preguntas
- ¿Por qué parametrizar la retención?
- ¿Qué impacto puede tener almacenar logs?
- ¿Qué controles deberían estar centralizados?

## 💡 Reto
Crear varios Log Groups con `for_each`.

## ✅ Solución
Consultar los archivos Terraform y `solution.md` de esta carpeta.