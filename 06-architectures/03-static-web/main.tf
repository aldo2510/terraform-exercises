resource "random_string" "suffix" {
  length = 6
  special = false
  upper = false
}

locals {
  storage_account_name = substr("${var.project_name}${random_string.suffix.result}", 0, 24)
}

resource "azurerm_resource_group" "this" {
  name = "${var.project_name}-rg"
  location = var.location
}

resource "azurerm_storage_account" "this" {
  name = local.storage_account_name
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  min_tls_version = "TLS1_2"
  allow_nested_items_to_be_public = false

  tags = {
    environment = "lab"
  }
}

resource "azurerm_storage_account_static_website" "this" {
  storage_account_id = azurerm_storage_account.this.id
  index_document = "index.html"
  error_404_document = "404.html"
}

resource "azurerm_storage_blob" "index" {
  name = "index.html"
  storage_container_id = "${azurerm_storage_account.this.id}/blobServices/default/containers/$web"
  type = "Block"
  content_type = "text/html"
  source_content = file("${path.module}/site/index.html")
  depends_on = [azurerm_storage_account_static_website.this]
}

resource "azurerm_storage_blob" "not_found" {
  name = "404.html"
  storage_container_id = "${azurerm_storage_account.this.id}/blobServices/default/containers/$web"
  type = "Block"
  content_type = "text/html"
  source_content = file("${path.module}/site/404.html")
  depends_on = [azurerm_storage_account_static_website.this]
}