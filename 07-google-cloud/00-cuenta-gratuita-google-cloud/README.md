# Crear una cuenta gratuita de Google Cloud

## Objetivo

Crear una cuenta de Google Cloud para utilizarla en los ejercicios de Terraform del directorio `07-google-cloud`.

## ¿Qué ofrece actualmente Google Cloud?

Para nuevos clientes elegibles, Google Cloud ofrece una prueba gratuita de 90 días con USD 300 de crédito de bienvenida. Además, existen productos que cuentan con un nivel gratuito mensual sujeto a sus límites.

> Las condiciones de elegibilidad y los productos incluidos pueden cambiar. Consulta siempre la documentación oficial antes de registrarte.

## 1. Requisitos

Necesitas una cuenta de Google que puedas utilizar para el laboratorio.

Durante el registro Google Cloud crea una cuenta de facturación de prueba y proporciona el crédito de bienvenida a los usuarios nuevos que cumplen los requisitos de elegibilidad.

## 2. Iniciar el registro

Entra a la página oficial:

**Google Cloud Free:** https://cloud.google.com/free?hl=es

Selecciona **Comenzar gratis**.

## 3. Iniciar sesión con Google

Utiliza tu cuenta de Google.

Si todavía no tienes una cuenta adecuada para el laboratorio, puedes crear una cuenta de Google antes de comenzar.

## 4. Completar el registro

Sigue los pasos mostrados por Google Cloud para:

1. Seleccionar país.
2. Aceptar los términos.
3. Completar la información solicitada.
4. Configurar la cuenta de facturación de prueba.
5. Completar las verificaciones necesarias.

> Google indica que durante la prueba gratuita no se factura el uso de Google Cloud. Aun así, revisa siempre las condiciones actuales de la oferta y controla el consumo.

## 5. Crear un proyecto para Terraform

Entra a Google Cloud Console:

https://console.cloud.google.com/

Crea un proyecto, por ejemplo:

```text
terraform-lab
```

Guarda el **Project ID**. Es el identificador que normalmente utilizarás desde Terraform.

Puedes comprobar tus proyectos con Google Cloud CLI:

```bash
gcloud projects list
```

Selecciona tu proyecto:

```bash
gcloud config set project <PROJECT_ID>
```

Verifica:

```bash
gcloud config get-value project
```

## 6. Instalar y configurar Google Cloud CLI

Comprueba que `gcloud` esté instalado:

```bash
gcloud version
```

Autentícate:

```bash
gcloud auth login
```

Configura el proyecto:

```bash
gcloud config set project <PROJECT_ID>
```

## 7. Preparar Terraform

Instala Terraform y verifica:

```bash
terraform version
```

Para los laboratorios puedes utilizar las credenciales de Google Cloud CLI para autenticar Terraform.

Una configuración típica del provider será:

```hcl
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "<PROJECT_ID>"
  region  = "us-central1"
}
```

Reemplaza `<PROJECT_ID>` por el Project ID real de tu proyecto.

## 8. Verificar autenticación

Comprueba que puedes acceder al proyecto:

```bash
gcloud projects describe <PROJECT_ID>
```

Si el comando devuelve la información del proyecto, la CLI está correctamente configurada.

## 9. Controlar el consumo

En Google Cloud Console revisa regularmente:

- Crédito disponible.
- Fecha de vencimiento de la prueba.
- Consumo por proyecto.
- Cuenta de facturación.
- Recursos creados por los ejercicios.

Recuerda que el nivel gratuito tiene límites mensuales y que el crédito de USD 300 es temporal.

## 10. Limpieza de recursos

Al terminar cada ejercicio ejecuta los comandos de destrucción correspondientes, por ejemplo:

```bash
terraform destroy
```

También puedes revisar los recursos existentes desde Cloud Console para asegurarte de que no quedaron recursos innecesarios.

## 11. Checklist

- [ ] Cuenta de Google creada.
- [ ] Google Cloud Free Trial activada.
- [ ] Crédito de USD 300 disponible.
- [ ] Proyecto creado.
- [ ] Project ID identificado.
- [ ] `gcloud auth login` funcionando.
- [ ] Proyecto seleccionado con `gcloud config set project`.
- [ ] Terraform instalado.
- [ ] Terraform puede autenticarse con Google Cloud.

## Referencias oficiales

- Google Cloud Free: https://cloud.google.com/free?hl=es
- Google Cloud Free Trial FAQ: https://cloud.google.com/signup-faqs?hl=es-419
- Google Cloud Getting Started: https://docs.cloud.google.com/docs/get-started?hl=es-419

**Objetivo cumplido:** ya puedes utilizar Google Cloud para los ejercicios de Terraform.