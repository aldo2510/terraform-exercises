# Lab AWS 04 — CloudWatch Log Group

## 🎯 Objetivo
Parametrizar observabilidad mediante Terraform.

## 📝 Actividad
1. Definir nombre del proyecto.
2. Definir retención.
3. Validar los valores permitidos.
4. Crear el Log Group.
5. Ejecutar `plan`.
6. Aplicar.
7. Modificar la retención.
8. Revisar el plan.
9. Destruir.

## 💬 Preguntas
- ¿Por qué conviene parametrizar la retención?
- ¿Qué diferencia hay entre crear infraestructura y configurar observabilidad?
- ¿Qué costo puede tener almacenar logs?

## 💡 Reto
Crear varios Log Groups con `for_each`.