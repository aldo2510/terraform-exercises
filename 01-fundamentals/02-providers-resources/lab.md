# Lab 02 — Providers y Resources

## 🎯 Objetivo
Comprender la relación entre Terraform, un provider y un resource.

## 👨‍🏫 Guion del instructor
Mostrar que Terraform Core no conoce directamente S3, Azure Storage, etc. El provider implementa la comunicación con la API del proveedor cloud.

## 🧩 Escenario
Crear un recurso sencillo utilizando el provider correspondiente al laboratorio.

## 📝 Actividad
1. Declarar `terraform.required_providers`.
2. Fijar una versión compatible del provider.
3. Configurar el provider.
4. Crear un resource.
5. Ejecutar `terraform init`.
6. Ejecutar `terraform fmt` y `terraform validate`.
7. Ejecutar `terraform plan`.
8. Aplicar.
9. Revisar `terraform state list`.
10. Ejecutar `terraform destroy`.

## 💬 Preguntas
- ¿Qué hace `terraform init`?
- ¿Qué diferencia existe entre provider y resource?
- ¿Dónde guarda Terraform la relación entre configuración y recurso real?

## 💡 Reto
Agregar tags mediante un mapa y evitar duplicación con `locals`.

## ✅ Solución
Consultar los `.tf` y `solution.md`.