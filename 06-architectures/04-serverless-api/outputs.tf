output "function_url" {
  description = "HTTP endpoint exposed by the Function."
  value = azurerm_function_app_function.api.url
}

output "function_app_name" {
  description = "Function App name."
  value = azurerm_linux_function_app.this.name
}

output "resource_group_name" {
  description = "Resource group name."
  value = azurerm_resource_group.this.name
}