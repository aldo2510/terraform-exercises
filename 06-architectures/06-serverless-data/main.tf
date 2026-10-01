resource "random_string" "suffix" {
  length = 6
  special = false
  upper = false
}

locals {
  azure_storage_account_name = substr("${var.project_name}${random_string.suffix.result}", 0, 24)
}

resource "aws_dynamodb_table" "this" {
  name = "${var.project_name}-aws-${random_string.suffix.result}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Environment = "lab"
  }
}

resource "azurerm_resource_group" "this" {
  name = "${var.project_name}-azure-rg"
  location = var.azure_location
}

resource "azurerm_storage_account" "this" {
  name = local.azure_storage_account_name
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  min_tls_version = "TLS1_2"
}

resource "azurerm_storage_table" "this" {
  name = "items"
  storage_account_id = azurerm_storage_account.this.id
}