# Lab AWS 05 — Introducción a multicloud

## 🎯 Objetivo
Comprender cómo Terraform coordina providers diferentes.

## 👨‍🏫 Guion del instructor
Cada alumno utiliza sus propias cuentas AWS y Azure. Mostrar primero qué parte es común y qué parte es específica de cada provider.

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
- ¿Qué debe quedar específico del cloud?
- ¿Cuándo conviene utilizar módulos?

## 💡 Reto
Separar AWS y Azure en módulos.