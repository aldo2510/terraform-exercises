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

## 6. Instalar Google Cloud CLI (gcloud)

La **Google Cloud CLI** incluye el comando `gcloud`, que utilizaremos para autenticarnos, seleccionar proyectos y administrar recursos desde la terminal.

La instalación oficial está disponible para **Linux, macOS y Windows**. Google también ofrece Cloud Shell, donde `gcloud` ya viene instalado. citeturn0search0turn0search7

### Opción A — macOS y Linux

La forma más sencilla para un laboratorio es utilizar el instalador oficial:

```bash
curl https://sdk.cloud.google.com | bash
```

Durante la instalación:

1. Selecciona el directorio donde se instalará `google-cloud-sdk`.
2. Acepta agregar `gcloud` al `PATH`.
3. Puedes habilitar el autocompletado de comandos.

Después reinicia la shell:

```bash
exec -l $SHELL
```

Comprueba la instalación:

```bash
gcloud version
```

Google documenta este método para macOS y Linux. citeturn0search0

### Opción B — Debian / Ubuntu

También puedes instalar la Google Cloud CLI mediante el paquete oficial de Google para Debian/Ubuntu. Consulta la documentación oficial para el repositorio y los comandos correspondientes:

https://docs.cloud.google.com/sdk/docs/install-sdk?hl=es-419

> Para este repositorio recomendamos el instalador oficial si quieres una instalación rápida para los laboratorios.

### Opción C — Windows

Descarga e instala el instalador oficial de Google Cloud CLI para Windows:

https://cloud.google.com/sdk/docs/install

El instalador puede incluir Python y configurar los componentes necesarios. Al finalizar, abre una nueva terminal y verifica:

```powershell
gcloud version
```

Google también permite instalarla mediante el instalador de Windows desde PowerShell. citeturn0search6

### Opción D — Google Cloud Shell

Si no quieres instalar nada localmente, puedes utilizar **Cloud Shell** desde Google Cloud Console.

Cloud Shell ya proporciona `gcloud` y otras herramientas de Google Cloud:

```bash
gcloud version
```

Esto es especialmente útil para los primeros ejercicios del repositorio. citeturn0search10

### Inicializar Google Cloud CLI

Después de instalar `gcloud`, inicializa la configuración:

```bash
gcloud init
```

El proceso te permitirá:

1. Iniciar sesión con tu cuenta de Google.
2. Seleccionar el proyecto.
3. Configurar una configuración inicial de `gcloud`.

También puedes autenticarte directamente:

```bash
gcloud auth login
```

Selecciona el proyecto del laboratorio:

```bash
gcloud config set project <PROJECT_ID>
```

Verifica:

```bash
gcloud config get-value project
```

Y comprueba el acceso al proyecto:

```bash
gcloud projects describe <PROJECT_ID>
```

### Verificación final

Ejecuta:

```bash
gcloud version
gcloud auth list
gcloud config get-value project
```

Si estos comandos funcionan, tu entorno está listo para continuar con Terraform.

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