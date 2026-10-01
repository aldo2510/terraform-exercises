resource "random_string" "suffix" {
  length = 6
  special = false
  upper = false
}

locals {
  azure_storage_account_name = substr("${var.project_name}${random_string.suffix.result}", 0, 24)
}

resource "aws_sqs_queue" "this" {
  name = "${var.project_name}-aws-queue-${random_string.suffix.result}"
  message_retention_seconds = 300

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

resource "azurerm_storage_queue" "this" {
  name = "${var.project_name}-queue"
  storage_account_id = azurerm_storage_account.this.id
}