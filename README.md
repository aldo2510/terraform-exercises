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
