# Lab Modules 01 — Módulo básico

## 🎯 Objetivo
Encapsular recursos Terraform en un módulo reutilizable.

## 👨‍🏫 Guion del instructor
Explicar root module vs child module. El módulo recibe inputs mínimos y devuelve outputs útiles.

## 📝 Actividad
1. Crear `modules/storage`.
2. Crear variables dentro del módulo.
3. Crear el resource dentro del módulo.
4. Crear outputs.
5. Invocar el módulo desde el root.
6. Ejecutar `terraform init`.
7. Ejecutar `plan`.
8. Aplicar.
9. Revisar outputs.
10. Destruir.

## 💬 Preguntas
- ¿Qué debería entrar al módulo?
- ¿Qué debería salir?
- ¿Qué responsabilidad pertenece al root?
- ¿Cómo evitar módulos excesivamente genéricos?

## 💡 Reto
Crear varias instancias del módulo usando `for_each`.

## ✅ Solución
Consultar `solution.md` y la carpeta `modules/`.