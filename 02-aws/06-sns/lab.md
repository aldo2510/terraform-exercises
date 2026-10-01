# Lab — SNS

## Objetivo
Practicar SNS de forma reusable y parametrizada.

## Paso a paso
1. Preparar el root module y declarar variables.
2. Definir los recursos necesarios sin máquinas virtuales.
3. Ejecutar `terraform fmt`, `terraform validate` y `terraform plan`.
4. Aplicar y revisar el State.
5. Modificar una variable y analizar el diff.
6. Documentar outputs y dependencias.
7. Destruir todos los recursos al terminar.

## Buenas prácticas
No almacenar credenciales, secretos ni `.tfstate` en Git. Cada alumno trabaja con su propia cuenta cloud.