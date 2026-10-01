terraform {
  required_version = ">= 1.5.0"
  required_providers { azurerm = { source = "hashicorp/azurerm", version = "~> 4.0" } }
}
provider "azurerm" { features {} }

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "this" {
  name = "${var.project_name}-rg"
  location = var.location
  tags = var.tags
}

resource "azurerm_key_vault" "this" {
  name = var.key_vault_name
  location = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  tenant_id = data.azurerm_client_config.current.tenant_id
  sku_name = "standard"
  purge_protection_enabled = false
  soft_delete_retention_days = 7
  tags = var.tags
}