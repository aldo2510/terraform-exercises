# Lab AWS 05 — Introducción a multicloud

## 🎯 Objetivo
Comprender cómo Terraform coordina providers diferentes.

## 👨‍🏫 Guion del instructor
Mostrar qué parte de la configuración es común y qué parte es específica de cada cloud.

## 📝 Actividad
1. Configurar AWS y Azure.
2. Definir variables comunes.
3. Crear un recurso sencillo en cada cloud.
4. Ejecutar `terraform plan`.
5. Identificar el provider de cada resource.
6. Aplicar.
7. Revisar outputs.
8. Destruir.

## 💬 Preguntas
- ¿Qué código puede reutilizarse?
- ¿Qué debe ser específico del cloud?
- ¿Cuándo conviene utilizar módulos?

## 💡 Reto
Separar AWS y Azure en módulos.