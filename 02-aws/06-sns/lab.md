# Lab AWS 06 — SNS y count condicional

## 🎯 Objetivo
Practicar recursos opcionales con `count`.

## 📝 Actividad
1. Crear SNS Topic.
2. Definir un email opcional.
3. Usar `count` para crear la subscription solo cuando exista email.
4. Ejecutar `plan`.
5. Aplicar.
6. Cambiar el email a `null`.
7. Comparar el plan.
8. Destruir.

## 💬 Preguntas
- ¿Qué significa `count = 0`?
- ¿Qué ocurre al pasar de 0 a 1?
- ¿Cuándo sería mejor `for_each`?

## 💡 Reto
Soportar múltiples endpoints con `for_each`.