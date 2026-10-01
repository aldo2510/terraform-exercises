terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers { azurerm = { source = "hashicorp/azurerm", version = ">= 5.0, < 6.0" } }
}
provider "azurerm" { features {} }
variable "project" { type = string, default = "Terraform Lab" }
variable "environment" { type = string, default = "dev" }
variable "location" { type = string, default = "East US" }
locals { normalized = replace(lower(var.project), " ", "") }
resource "azurerm_resource_group" "this" { name = "${local.normalized}-${var.environment}-rg", location = var.location }
