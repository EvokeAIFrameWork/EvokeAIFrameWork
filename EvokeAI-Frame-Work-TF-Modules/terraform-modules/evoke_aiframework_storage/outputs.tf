output "storage_account_name" {
  description = "Name of the created Storage Account"
  value       = azurerm_storage_account.storage.name
}

output "storage_account_primary_blob_endpoint" {
  description = "Blob endpoint URL"
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}
