terraform {
  required_version = ">= 1.5.0"
  required_providers { azurerm = { source = "hashicorp/azurerm", version = "~> 4.0" } }
}
provider "azurerm" { features {} }

resource "azurerm_resource_group" "this" {
  name = "${var.project_name}-rg"
  location = var.location
  tags = var.tags
}

resource "azurerm_log_analytics_workspace" "this" {
  name = "${var.project_name}-law"
  location = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  sku = var.sku
  retention_in_days = var.retention_in_days
  tags = var.tags
}