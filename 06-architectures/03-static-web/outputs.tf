output "website_url" {
  description = "Static website endpoint."
  value = azurerm_storage_account.this.primary_web_endpoint
}

output "storage_account_name" {
  description = "Storage account name."
  value = azurerm_storage_account.this.name
}

output "resource_group_name" {
  description = "Resource group name."
  value = azurerm_resource_group.this.name
}