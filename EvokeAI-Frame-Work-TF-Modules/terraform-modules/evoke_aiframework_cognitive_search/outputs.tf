output "search_service_id" {
  value = azurerm_search_service.search.id
}

output "search_service_name" {
  value = azurerm_search_service.search.name
}

output "search_service_url" {
  value = azurerm_search_service.search.query_keys[0].key
}
