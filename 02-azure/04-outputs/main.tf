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

variable "location" {
  description = "Azure location."
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "Globally unique Storage Account name."
  type        = string
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "lab" {
  name     = "terraform-output-rg"
  location = var.location
}

resource "azurerm_storage_account" "lab" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.lab.name
  location                 = azurerm_resource_group.lab.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
}

output "resource_group_id" {
  description = "Resource Group ID."
  value       = azurerm_resource_group.lab.id
}

output "storage_account_id" {
  description = "Storage Account ID."
  value       = azurerm_storage_account.lab.id
}

output "location" {
  description = "Azure location."
  value       = azurerm_resource_group.lab.location
}