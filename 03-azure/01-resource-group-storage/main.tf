terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = { source = "hashicorp/azurerm", version = "~> 4.0" }
    random = { source = "hashicorp/random", version = "~> 3.6" }
  }
}

provider "azurerm" { features {} }

resource "random_string" "suffix" {
  length = 6
  special = false
  upper = false
}

resource "azurerm_resource_group" "this" {
  name = "${var.project_name}-${var.environment}-rg"
  location = var.location
  tags = local.common_tags
}

resource "azurerm_storage_account" "this" {
  name = replace("${var.project_name}${var.environment}${random_string.suffix.result}", "-", "")
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  tags = local.common_tags
}

locals {
  common_tags = merge(var.tags, { environment = var.environment })
}