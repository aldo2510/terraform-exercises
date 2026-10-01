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

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

output "location" {
  description = "Azure location."
  value       = var.location
}