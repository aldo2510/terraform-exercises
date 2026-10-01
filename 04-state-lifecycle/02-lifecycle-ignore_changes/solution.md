# Solución — lifecycle e ignore_changes

El ejemplo usa `ignore_changes = [tags]` para demostrar cómo Terraform deja de reconciliar ese atributo.

## Importante

`ignore_changes` no debe utilizarse como mecanismo para ocultar cambios desconocidos. En producción debe existir una razón explícita y documentada.

## Práctica

1. Aplicar.
2. Cambiar tags fuera de Terraform.
3. Ejecutar `terraform plan`.
4. Observar que Terraform no propone revertir el atributo ignorado.
5. Retirar `ignore_changes`.
6. Ejecutar nuevamente `plan` y comparar.