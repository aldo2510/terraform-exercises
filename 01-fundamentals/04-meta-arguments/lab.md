# Lab 04 — Meta-arguments: count y for_each

## 🎯 Objetivo
Crear múltiples instancias de un resource y comprender el impacto en Terraform State.

## 👨‍🏫 Guion del instructor
Primero resolver con `count`. Después migrar a `for_each`. Mostrar `terraform state list` y explicar los resource addresses.

## 📝 Actividad
1. Definir una colección de elementos.
2. Crear recursos con `count`.
3. Ejecutar `terraform plan`.
4. Aplicar.
5. Revisar `terraform state list`.
6. Eliminar un elemento intermedio.
7. Ejecutar `plan` y analizar los cambios.
8. Rehacer el ejercicio con `for_each`.
9. Comparar los dos planes.

## 💬 Preguntas
- ¿Por qué `count` utiliza índices?
- ¿Por qué `for_each` utiliza keys?
- ¿Qué ocurre si cambia una key?

## 💡 Reto
Utilizar un mapa de objetos como entrada de `for_each`.

## ✅ Solución
Consultar los archivos Terraform de esta carpeta.