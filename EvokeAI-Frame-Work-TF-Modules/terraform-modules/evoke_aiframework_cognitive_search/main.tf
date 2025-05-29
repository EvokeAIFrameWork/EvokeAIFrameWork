resource "azurerm_search_service" "search" {
  name                = var.search_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  partition_count     = var.partition_count
  replica_count       = var.replica_count
  hosting_mode        = var.hosting_mode
  tags                = var.tags
}
