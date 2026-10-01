terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers { azurerm = { source = "hashicorp/azurerm", version = ">= 5.0, < 6.0" } }
}
provider "azurerm" { features {} }
variable "containers" { type = set(string), default = ["logs", "data"] }
resource "azurerm_resource_group" "this" { name = "terraform-count-foreach-rg", location = "East US" }
resource "azurerm_storage_account" "this" {
  name = "tfcountforeachlab"
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_container" "for_each" {
  for_each = var.containers
  name = each.key
  storage_account_id = azurerm_storage_account.this.id
}
