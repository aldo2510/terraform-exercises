# Lab Azure 02 — Storage Containers y for_each

## 🎯 Objetivo
Crear varios Blob Containers sin duplicar bloques.

## 👨‍🏫 Guion del instructor
Mostrar los resource addresses generados por `for_each`.

## 📝 Actividad
1. Definir un `set(string)`.
2. Crear Storage Account.
3. Crear containers con `for_each`.
4. Ejecutar `plan`.
5. Aplicar.
6. Agregar un container.
7. Ejecutar nuevamente `plan`.
8. Analizar los addresses.
9. Destruir.

## 💬 Preguntas
- ¿Por qué utilizar set?
- ¿Qué diferencia existe con una lista?
- ¿Qué sucede si cambia una key?

## 💡 Reto
Usar un mapa de objetos para definir configuración por container.