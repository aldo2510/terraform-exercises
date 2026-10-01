# Lab Azure 05 — Multicloud AWS + Azure

## 🎯 Objetivo
Comparar providers y preparar una estructura multicloud mantenible.

## 👨‍🏫 Guion del instructor
Explicar que multicloud no significa forzar una abstracción idéntica entre clouds.

## 📝 Actividad
1. Configurar ambos providers.
2. Definir variables comunes.
3. Crear un recurso AWS.
4. Crear un recurso Azure.
5. Crear outputs separados.
6. Ejecutar `plan`.
7. Analizar dependencias.
8. Aplicar.
9. Destruir.

## 💬 Preguntas
- ¿Qué debe ser común?
- ¿Qué debe ser específico del cloud?
- ¿Por qué separar providers mediante módulos?

## 💡 Reto
Crear módulos AWS y Azure y consumirlos desde el root.