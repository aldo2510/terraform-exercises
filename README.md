# Terraform Exercises — AWS & Azure

Repositorio de ejercicios prácticos de Terraform para clases one-to-one de infraestructura.

## 🎯 Enfoque

La organización enseña el mismo concepto en AWS y Azure de forma paralela. No se utilizan máquinas virtuales: los laboratorios se enfocan en recursos pequeños como S3, Resource Groups, Storage Accounts y Blob Containers.

## 🧭 Estructura

```
01-aws/
  01-provider/
  02-resources/
  03-variables-tfvars/
  04-outputs/
  05-data/
  06-validation/
  07-metaarguments/
  08-locals/
  09-expressions-functions/
  10-count-vs-for-each/
  11-lifecycle/
  12-dependencies/
  13-import/

02-azure/
  01-provider/
  02-resources/
  03-variables-tfvars/
  04-outputs/
  05-data/
  06-validation/
  07-metaarguments/
  08-locals/
  09-expressions-functions/
  10-count-vs-for-each/
  11-lifecycle/
  12-dependencies/
  13-import/

03-multicloud/
  01-providers/
  02-inputs-outputs/
  03-variable-sources/

04-state/
  01-state-basics/
  02-state-commands/
  03-remote-backend/
  04-import-and-state/

05-modules/
  01-first-module/
  02-module-inputs-outputs/
  03-module-aws-azure/
  04-module-composition/
```

Cada laboratorio está pensado para explicar el concepto, dejar que el alumno lo implemente y finalmente comparar con la solución.

## 👨‍🏫 Flujo recomendado para la sesión

1. Explicar el concepto.
2. Presentar el escenario.
3. Pedir al alumno que proponga la configuración.
4. Implementar y ejecutar `terraform fmt`.
5. Ejecutar `terraform validate`.
6. Revisar `terraform plan`.
7. Analizar el resultado.
8. Aplicar y revisar el recurso en la nube.
9. Comparar con la solución.
10. Destruir los recursos al finalizar.

Los README de los laboratorios avanzados incluyen preguntas y errores intencionales para facilitar la dinámica one-to-one.

## 🧱 Conceptos cubiertos

| Concepto | AWS | Azure |
|---|---|---|
| Provider | ✅ | ✅ |
| Resources | ✅ | ✅ |
| Variables / tfvars | ✅ | ✅ |
| Outputs | ✅ | ✅ |
| Data Sources | ✅ | ✅ |
| Validation | ✅ | ✅ |
| Meta-arguments | ✅ | ✅ |
| Locals | ✅ | ✅ |
| Expressions / Functions | ✅ | ✅ |
| count / for_each | ✅ | ✅ |
| lifecycle | ✅ | ✅ |
| Dependencies | ✅ | ✅ |
| Import | ✅ | ✅ |
| State | — | — |
| Modules | AWS | AWS + Azure |
| Multicloud | ✅ | ✅ |

## 🔐 Autenticación

Cada alumno utiliza su propia cuenta AWS y su propia suscripción Azure. No se almacenan credenciales, tokens ni secretos en el repositorio.

## 🧪 Comandos base

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

## 💡 Buenas prácticas

- Versiones de Terraform y providers acotadas.
- Variables con tipos explícitos.
- Validaciones cuando corresponda.
- Outputs claros.
- Dependencias mediante referencias cuando sea posible.
- for_each cuando existe identidad estable.
- Sin credenciales hardcodeadas.
- State remoto para equipos y ambientes compartidos.
- Módulos pequeños, reutilizables y con inputs/outputs claros.

## 📚 Ejercicios propuestos

Consulta `ejercicios-propuestos.md` para prácticas adicionales.
