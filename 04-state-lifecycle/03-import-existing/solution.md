# Solución — Importación

La solución esperada consiste en declarar primero el resource y luego asociar el recurso existente con su address de Terraform.

## Flujo moderno

```bash
terraform import <resource-address> <cloud-resource-id>
terraform plan
```

Después de importar, ajustar la configuración hasta que el plan represente correctamente el recurso existente.

## Objetivo didáctico

La importación no crea el recurso: incorpora su identidad al State. La configuración Terraform debe representar posteriormente la configuración deseada.