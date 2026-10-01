# Lab State 03 — Importación

## 🎯 Objetivo
Incorporar a Terraform un recurso que ya existe en el cloud.

## 👨‍🏫 Guion del instructor
Crear un recurso pequeño desde la consola cloud y después incorporarlo a Terraform.

## 📝 Actividad
1. Crear el recurso manualmente.
2. Declarar el resource en Terraform.
3. Obtener su ID.
4. Ejecutar `terraform import`.
5. Ejecutar `terraform state list`.
6. Ejecutar `terraform plan`.
7. Ajustar la configuración hasta representar el recurso.
8. Gestionarlo desde Terraform.
9. Destruir cuando corresponda.

## 💬 Preguntas
- ¿Import crea infraestructura?
- ¿Qué modifica realmente?
- ¿Por qué puede aparecer drift después de importar?

## 💡 Reto
Investigar y probar el bloque declarativo `import`.