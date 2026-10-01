terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers { azurerm = { source = "hashicorp/azurerm", version = ">= 5.0, < 6.0" } }
}
provider "azurerm" { features {} }
resource "azurerm_resource_group" "imported" {
  name = "terraform-import-rg"
  location = "East US"
}
output "resource_group_id" { value = azurerm_resource_group.imported.id }
