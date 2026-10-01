# Terraform Exercises — AWS + Azure

Repositorio de laboratorios prácticos de Terraform para capacitación en Infrastructure as Code.

## Enfoque

Los ejercicios están diseñados para trabajar con **cuentas individuales de AWS y Azure** y evitan la creación de máquinas virtuales. Se priorizan servicios administrados, almacenamiento, observabilidad, mensajería, identidad y conceptos propios de Terraform.

## Estructura

- `01-fundamentals/` — variables, tfvars, providers, resources, outputs, locals, meta-arguments y validaciones.
- `02-aws/` — ejercicios AWS.
- `03-azure/` — ejercicios Azure.
- `04-state-lifecycle/` — State, backend, lifecycle e import.
- `05-expressions/` — expresiones, funciones, for expressions y dynamic blocks.
- `06-modules/` — módulos y composición.
- `ejercicios-propuestos.md` — banco adicional de ejercicios y retos.
- Cada laboratorio contiene `lab.md` y, cuando aplica, archivos Terraform de solución.

## Prerrequisitos

### Terraform

Usar Terraform >= 1.5.0.

Verificar:

```bash
terraform version
```

### AWS

Autenticarse mediante AWS CLI/profile o el mecanismo estándar de credenciales.

```bash
aws sts get-caller-identity
```

### Azure

Autenticarse mediante Azure CLI.

```bash
az login
az account show
```

No colocar access keys, client secrets, tokens ni passwords dentro de los archivos `.tf`.

## Flujo recomendado

Desde la carpeta de cada ejercicio:

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

## Variables

Los ejemplos se proporcionan como `terraform.tfvars.example`.

Copiar antes de ejecutar:

```bash
cp terraform.tfvars.example terraform.tfvars
```

No versionar el `.tfvars` real cuando contenga información sensible.

## Buenas prácticas aplicadas

- Providers con versiones.
- Variables tipadas y documentadas.
- Validaciones.
- Locals para valores derivados.
- Outputs descriptivos.
- Tags comunes.
- Naming parametrizado.
- Sin credenciales hardcodeadas.
- Recursos de bajo impacto para laboratorios.
- Limpieza mediante `terraform destroy`.

## Soluciones

Los archivos Terraform incluidos en los laboratorios representan una solución de referencia. Los `solution.md` explican las decisiones y buenas prácticas.

Para usar el repositorio como evaluación, se recomienda ocultar las soluciones al alumno o entregar únicamente `lab.md` y los archivos starter.

## Seguridad y costos

Cada alumno es responsable de revisar el costo de los recursos antes de ejecutar `apply`. Algunos servicios pueden generar cargos incluso durante un laboratorio corto.

Siempre revisar:

```bash
terraform plan
```

y destruir los recursos cuando corresponda.

## Recursos

Consulta la documentación oficial de Terraform y de cada provider antes de usar una versión distinta a la indicada por el laboratorio.


## 👨‍🏫 Cómo utilizar el repositorio en clase

Este repositorio está pensado como **material del instructor**, no como una colección de ejercicios para entregar sin explicación.

Cada `lab.md` funciona como un guion de sesión:

1. **Objetivo** — qué concepto se quiere enseñar.
2. **Guion del instructor** — qué explicar antes de escribir código.
3. **Actividad** — pasos que el instructor desarrolla con los alumnos.
4. **Preguntas** — preguntas para comprobar comprensión.
5. **Validación** — comandos y comportamiento esperado.
6. **Reto** — extensión opcional para profundizar.
7. **Solución** — archivos Terraform y `solution.md` para mostrar después del ejercicio.

### Sesión 01 — Terraform Core

Secuencia sugerida:

```text
IaC
 ↓
Terraform
 ↓
HCL
 ↓
Provider
 ↓
Resource
 ↓
Variables
 ↓
terraform.tfvars
 ↓
Locals
 ↓
Outputs
 ↓
Expressions
 ↓
count / for_each
 ↓
Validation
 ↓
State
```

Se recomienda resolver primero los ejercicios de `01-fundamentals/` y utilizar AWS/Azure únicamente como contexto práctico cuando sea necesario.

### Sesión 02 — Despliegues Multicloud

Secuencia sugerida:

```text
AWS Provider ─────┐
                  ├── Terraform
Azure Provider ───┘
       ↓
Storage
       ↓
Data / Observability
       ↓
Networking
       ↓
Modules
       ↓
Multicloud
```

Los alumnos utilizan sus propias cuentas AWS y Azure.

### Patrón recomendado durante la clase

No mostrar inmediatamente la solución.

```text
1. Explicar concepto
2. Plantear escenario
3. Alumno propone solución
4. Escribir código
5. terraform fmt
6. terraform validate
7. terraform plan
8. Analizar resultado
9. terraform apply
10. Revisar resultado
11. Mostrar solution.md
12. Comparar con la solución de referencia
13. Plantear reto
```
