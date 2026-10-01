terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers { azurerm = { source = "hashicorp/azurerm", version = ">= 5.0, < 6.0" } }
}
provider "azurerm" { features {} }
resource "azurerm_resource_group" "protected" {
  name = "terraform-lifecycle-rg"
  location = "East US"
  lifecycle { prevent_destroy = true }
}
