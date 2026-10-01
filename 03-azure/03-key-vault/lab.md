# Lab Azure 03 — Key Vault

## 🎯 Objetivo
Practicar un recurso administrado y un data source.

## ⚠️ Seguridad
No almacenar valores confidenciales reales en los archivos del laboratorio.

## 📝 Actividad
1. Ejecutar `az login`.
2. Crear Resource Group.
3. Consultar la identidad actual mediante `azurerm_client_config`.
4. Crear Key Vault.
5. Ejecutar `validate` y `plan`.
6. Aplicar.
7. Revisar outputs.
8. Destruir.

## 💬 Preguntas
- ¿Qué diferencia hay entre data y resource?
- ¿Por qué la información sensible no debe estar en Git?
- ¿Qué parte de la autenticación pertenece al entorno?

## 💡 Reto
Diseñar cómo cargar un valor sensible sin escribirlo en el repositorio.