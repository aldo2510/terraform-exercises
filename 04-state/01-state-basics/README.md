# State básico

## Objetivo
Entender qué representa terraform.tfstate y por qué Terraform lo necesita.

## Práctica
Ejecuta init, plan y apply en un laboratorio pequeño. Luego usa terraform state list y terraform state show.

## Preguntas
- ¿Qué información mantiene el state?
- ¿Por qué no debe editarse manualmente?

## Buenas prácticas
No subas terraform.tfstate al repositorio. En equipos y ambientes compartidos utiliza un backend remoto.
