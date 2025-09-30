output "storage_account_id" {
  description = "ID of the storage account"
  value       = azurerm_storage_account.this.id
}

output "storage_account_name" {
  description = "Name of the storage account"
  value       = azurerm_storage_account.this.name
}

output "container_names" {
  description = "List of blob container names created"
  value       = [for c in azurerm_storage_container.this : c.name]
}
