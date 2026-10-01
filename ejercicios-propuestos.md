# Ejercicios propuestos de Terraform — AWS + Azure

Estos ejercicios complementan los laboratorios del repositorio. Cada alumno debe trabajar con su propia cuenta de AWS y/o Azure.

## Reglas generales

- No crear máquinas virtuales.
- No almacenar credenciales en Git.
- No subir `.tfstate`, secretos ni archivos `.tfvars` con valores sensibles.
- Usar `.tfvars` solo para configuración no sensible; para credenciales usar la cadena de autenticación oficial de cada cloud.
- Ejecutar siempre `terraform fmt`, `terraform validate` y `terraform plan` antes de `apply`.
- Destruir los recursos al finalizar cuando el ejercicio no requiera conservarlos.

## Nivel 1 — Fundamentos

1. Variables simples y valores por defecto.
2. Variables complejas: list, set, map y object.
3. `.tfvars` y precedencia de variables.
4. Providers y versiones.
5. Resources y dependencias.
6. Outputs normales y sensitive.
7. Locals y tags comunes.
8. Validaciones con `validation`.
9. `count` para múltiples recursos.
10. `for_each` con mapas.
11. Operador condicional.
12. Funciones de strings y colecciones.

## Nivel 2 — AWS

13. S3 con naming dinámico.
14. S3 + ownership controls + public access block.
15. DynamoDB en modo PAY_PER_REQUEST.
16. CloudWatch Log Group con retention parametrizable.
17. SNS Topic y subscription opcional.
18. SQS Queue y DLQ.
19. EventBridge Rule.
20. VPC con subnets, route tables y security groups, sin EC2.
21. IAM Role y Policy document.
22. KMS Key para practicar cifrado administrado.
23. ECR Repository.
24. Secrets Manager: diseñar el recurso sin subir secretos al repositorio.

## Nivel 2 — Azure

25. Resource Group + Storage Account.
26. Blob Containers con `for_each`.
27. Key Vault.
28. Log Analytics Workspace.
29. Event Grid Topic.
30. Service Bus Namespace + Queue.
31. Azure Container Registry.
32. Application Insights.
33. Virtual Network + subnets, sin máquinas virtuales.
34. Network Security Group.
35. Managed Identity.

## Nivel 3 — Terraform avanzado

36. `lifecycle` y `ignore_changes`.
37. `prevent_destroy`.
38. `create_before_destroy`.
39. Importación de recursos existentes.
40. Backend remoto.
41. State locking.
42. Drift detection.
43. Modules con inputs y outputs.
44. Módulos con providers.
45. Módulos AWS + Azure.
46. `for_each` sobre módulos.
47. Dynamic blocks.
48. For expressions.
49. Object types y validaciones complejas.
50. Arquitectura multicloud reutilizable.

## Retos adicionales

### Reto A — Naming corporativo
Construir una convención:
`<cloud>-<project>-<environment>-<component>-<suffix>`.

### Reto B — Tags obligatorios
Rechazar configuraciones que no incluyan `environment`, `owner` y `cost_center`.

### Reto C — Modo seguro
Crear una variable `enable_public_access` y validar que solo pueda habilitarse en `dev`.

### Reto D — Multiambiente
Usar `dev.tfvars`, `qa.tfvars` y `prod.tfvars`.

### Reto E — Multi-cloud
Crear almacenamiento equivalente en AWS y Azure usando un root module y módulos separados.

## Entregable esperado

Cada ejercicio debe contener como mínimo:

```text
lab.md
main.tf
variables.tf
outputs.tf
terraform.tfvars.example
README.md
```

Cuando corresponda, agregar:

```text
locals.tf
data.tf
versions.tf
providers.tf
backend.tf
modules/
solution.md
```

## Criterios de buenas prácticas

- Providers versionados.
- Variables con description y type.
- Validaciones donde aporten valor.
- Locals para valores derivados.
- Outputs descriptivos.
- Naming consistente.
- Tags estandarizados.
- Principio de mínimo privilegio.
- Nada de secretos hardcodeados.
- State remoto para escenarios colaborativos.
- Cambios pequeños y verificables.
