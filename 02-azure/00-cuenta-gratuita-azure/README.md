# Crear una cuenta gratuita de Microsoft Azure

## Objetivo

Crear una cuenta gratuita de Azure para utilizarla en los ejercicios de Terraform del directorio `02-azure`.

## ¿Qué ofrece actualmente Azure?

La cuenta gratuita de Azure incluye USD 200 de crédito para utilizar durante 30 días, además de cantidades gratuitas de determinados servicios. También existen servicios con cantidades gratuitas durante 12 meses y otros que son siempre gratuitos, sujetos a sus límites.

> Las condiciones de elegibilidad y las cantidades gratuitas pueden cambiar. Consulta siempre la página oficial de Azure antes de registrarte.

## 1. Requisitos

Microsoft indica que para registrarte necesitas:

- Una cuenta de Microsoft o GitHub.
- Un número de teléfono para verificación.
- Una tarjeta de crédito o débito que no sea prepago.

Durante la verificación puede aparecer una autorización temporal de USD 1 en la tarjeta; Microsoft indica que esta autorización se revierte y que la cuenta gratuita no genera cargos mientras permanezca bajo las condiciones de la oferta.

## 2. Iniciar el registro

Entra a la página oficial:

**Azure Free Account:** https://azure.microsoft.com/es-es/free/

Selecciona la opción para probar Azure gratis.

## 3. Iniciar sesión

Inicia sesión con tu cuenta Microsoft o crea una nueva cuenta Microsoft.

Para un laboratorio es recomendable utilizar una cuenta que puedas mantener durante todo el curso.

## 4. Completar la verificación

Completa los datos solicitados por Microsoft:

1. Información personal.
2. Número de teléfono.
3. Verificación de identidad.
4. Método de pago.
5. Aceptación de los términos de la oferta.

> El método de pago se utiliza para verificar la identidad. Revisa las condiciones actuales de la oferta antes de continuar.

## 5. Confirmar la suscripción

Una vez completado el registro, entra al portal:

https://portal.azure.com/

Busca **Suscripciones** y verifica que aparezca una suscripción correspondiente a la cuenta gratuita.

Anota el **Subscription ID**, porque posteriormente será necesario para trabajar con Terraform.

Puedes comprobarlo desde Azure CLI con:

```bash
az login
az account list -o table
```

Selecciona la suscripción que utilizarás:

```bash
az account set --subscription "<SUBSCRIPTION_ID>"
```

Verifica:

```bash
az account show -o table
```

## 6. Preparar la cuenta para Terraform

Instala Azure CLI y Terraform en tu equipo.

Comprueba Azure CLI:

```bash
az version
```

Comprueba Terraform:

```bash
terraform version
```

Autentícate:

```bash
az login
```

Para los ejercicios locales, Terraform puede autenticarse utilizando las credenciales de Azure CLI.

## 7. Crear un Resource Group de laboratorio

Puedes crear un Resource Group que utilizarás para los ejercicios:

```bash
az group create \
  --name rg-terraform-lab \
  --location eastus
```

Verifica:

```bash
az group show \
  --name rg-terraform-lab \
  -o table
```

> Antes de crear recursos adicionales, verifica que estén incluidos dentro de los límites gratuitos o que el crédito disponible sea suficiente.

## 8. Comprobar el estado de la cuenta

En el portal de Azure revisa:

- Suscripción activa.
- Crédito disponible.
- Fecha de vencimiento de la oferta.
- Cost Management y presupuesto.

Es recomendable configurar un presupuesto o alerta de costos para el laboratorio.

## 9. Importante sobre la oferta gratuita

La cuenta gratuita está orientada a pruebas y aprendizaje. Azure indica que, después de los 30 días o cuando se consume el crédito, debes pasar a pago por uso para continuar utilizando los servicios más allá de la oferta.

Por eso, antes de ejecutar recursos que puedan generar costos, verifica siempre el precio y el límite gratuito del servicio.

## 10. Checklist

- [ ] Cuenta Microsoft creada.
- [ ] Cuenta gratuita de Azure activada.
- [ ] Teléfono verificado.
- [ ] Método de pago verificado.
- [ ] Suscripción visible en Azure Portal.
- [ ] Subscription ID identificado.
- [ ] `az login` funcionando.
- [ ] Terraform instalado.
- [ ] Resource Group de laboratorio creado.

## Referencias oficiales

- Azure Free Account: https://azure.microsoft.com/es-es/free/
- Azure account options: https://azure.microsoft.com/es-es/pricing/purchase-options/azure-account

**Objetivo cumplido:** ya puedes utilizar la suscripción de Azure para los ejercicios de Terraform.