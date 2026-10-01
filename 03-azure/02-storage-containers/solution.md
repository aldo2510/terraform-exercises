# Solución — Containers y for_each

Se utiliza un `set(string)` y `for_each` para crear containers.

Esto permite que Terraform identifique cada container por su clave y evita el comportamiento posicional de `count`.

## Prueba

Agregar `logs` al conjunto y ejecutar:

```bash
terraform plan
```

Terraform debe proponer únicamente el nuevo container.

## Limpieza

```bash
terraform destroy
```