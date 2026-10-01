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
  name = "${var.project_name}-rg"
  location = var.location
}

resource "azurerm_storage_account" "this" {
  name = "tf${random_string.suffix.result}"
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "this" {
  for_each              = toset(var.containers)
  name                  = each.value
  storage_account_id    = azurerm_storage_account.this.id
  container_access_type = "private"
}