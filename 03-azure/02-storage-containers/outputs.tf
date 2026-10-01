output "container_names" {
  value = [for c in azurerm_storage_container.this : c.name]
}