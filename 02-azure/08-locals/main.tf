terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers { azurerm = { source = "hashicorp/azurerm", version = ">= 5.0, < 6.0" } }
}
provider "azurerm" { features {} }
variable "project" { type = string, default = "terraform-lab" }
variable "environment" { type = string, default = "dev" }
variable "location" { type = string, default = "East US" }
locals { name_prefix = "${lower(var.project)}-${lower(var.environment)}" }
resource "azurerm_resource_group" "this" { name = "${local.name_prefix}-rg", location = var.location }
resource "azurerm_storage_account" "this" {
  name = replace("${local.name_prefix}sa", "-", "")
  resource_group_name = azurerm_resource_group.this.name
  location = var.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}
