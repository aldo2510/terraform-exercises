terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers { azurerm = { source = "hashicorp/azurerm", version = ">= 5.0, < 6.0" } }
}
provider "azurerm" { features {} }
resource "azurerm_resource_group" "this" { name = "terraform-dependency-rg", location = "East US" }
resource "azurerm_storage_account" "this" {
  name = "tfdependencylab"
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}
