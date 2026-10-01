# Lab State 01 — Backend y Terraform State

## 🎯 Objetivo
Comprender State y la razón de utilizar un backend remoto.

## 👨‍🏫 Guion del instructor
Primero mostrar State local y después explicar colaboración, locking, seguridad y recuperación.

## 📝 Actividad
1. Ejecutar `terraform init`.
2. Aplicar un recurso de laboratorio.
3. Ejecutar `terraform state list`.
4. Inspeccionar el State.
5. Configurar el backend indicado por la solución.
6. Ejecutar `terraform init` nuevamente.
7. Verificar la gestión remota.
8. Destruir al finalizar.

## 💬 Preguntas
- ¿Qué información contiene State?
- ¿Por qué no debe subirse a Git?
- ¿Qué problema resuelve locking?
- ¿Por qué el backend es parte de la arquitectura?