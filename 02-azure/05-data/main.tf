terraform {
  required_version = ">= 1.6.0, < 2.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 5.0, < 6.0"
    }
  }
}

variable "subscription_id" {
  description = "Azure subscription ID."
  type        = string
  sensitive   = true
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

data "azurerm_client_config" "current" {}

output "subscription_id" {
  description = "Current Azure subscription."
  value       = data.azurerm_client_config.current.subscription_id
}

output "tenant_id" {
  description = "Current Azure tenant."
  value       = data.azurerm_client_config.current.tenant_id
}

output "client_id" {
  description = "Current authenticated client ID."
  value       = data.azurerm_client_config.current.client_id
}