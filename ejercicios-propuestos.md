# Ejercicios propuestos

Estos ejercicios están pensados para después de los laboratorios guiados. No incluyen la solución para que los alumnos puedan resolverlos.

## AWS

### 1. S3 con variables
Crear un bucket S3 cuyo nombre se construya a partir de:

- project
- environment
- owner

Agregar tags mediante una variable `map(string)`.

### 2. S3 con outputs
Exponer:

- nombre
- ARN
- región

### 3. DynamoDB
Crear una tabla DynamoDB parametrizando:

- nombre
- hash key
- billing mode

Agregar outputs.

### 4. Validaciones
Crear una variable `environment` que solamente acepte:

`dev`, `qa`, `prod`.

Agregar una segunda validación para una variable numérica.

### 5. Data Source
Utilizar `aws_caller_identity` y crear un tag con el account ID.

### 6. for_each
Crear varios Log Groups de CloudWatch a partir de un mapa.

### 7. count
Crear un SNS Topic opcional dependiendo de una variable booleana.

---

## Azure

### 8. Resource Group parametrizado
Crear un Resource Group usando:

- project
- environment
- location

Agregar tags.

### 9. Storage Account
Crear un Storage Account con:

- nombre
- tier
- replication
- location

Todos definidos mediante variables.

### 10. Outputs
Exponer:

- Resource Group ID
- Storage Account ID
- Storage Account name
- location

### 11. Data Source
Consultar información de la identidad actual utilizando `azurerm_client_config`.

### 12. Validaciones
Validar:

- environment
- naming del Storage Account
- replication type

### 13. for_each
Crear múltiples Blob Containers usando un mapa de objetos.

### 14. lifecycle
Agregar `prevent_destroy` a un recurso y analizar el comportamiento de `terraform plan`.

---

## Multicloud

### 15. AWS + Azure
Crear:

- un S3 Bucket en AWS
- un Resource Group en Azure

Usar un conjunto pequeño de variables comunes.

### 16. Providers con alias
Configurar dos regiones AWS mediante aliases y crear un bucket en cada región.

### 17. Módulos
Crear un módulo AWS para S3 y un módulo Azure para Resource Group.

Cada módulo debe tener:

- `variables.tf`
- `outputs.tf`
- `README.md`

### 18. Composición
Crear un root module que invoque los módulos AWS y Azure.

El root debe controlar los inputs y consumir los outputs.

---

## Reto final

Construir una pequeña plataforma multicloud que reciba como inputs:

```text
project_name
environment
aws_region
azure_location
tags
```

y cree:

```text
AWS
 └── S3

Azure
 └── Resource Group
      └── Storage Account
```

El resultado debe exponer outputs separados por cloud.

### Criterios de revisión

- Providers versionados.
- Variables tipadas.
- Validaciones.
- Data sources cuando corresponda.
- Outputs documentados.
- Uso correcto de `for_each` / `count`.
- Sin credenciales en el código.
- `terraform fmt`.
- `terraform validate`.
- Plan revisado antes de apply.
- Recursos destruidos al finalizar el laboratorio.
