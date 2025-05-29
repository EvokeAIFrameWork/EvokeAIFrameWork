# Resource Group
module "resource_group" {
  count               = var.enable_resource_group ? 1 : 0
  source              = "./evoke_aiframework_rg"
  resource_group_name = var.resource_group_name
  location            = var.location
}

# Storage Account
module "storage_account" {
  count                = var.enable_storage_account ? 1 : 0
  source               = "./evoke_aiframework_storage"
  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  account_tier         = var.account_tier
  replication_type     = var.replication_type
  tags                 = var.tags
  depends_on = [module.resource_group]
}

# App Service Plan
module "app_service_plan" {
  source              = "./evoke_aiframework_appservice_plan"
  app_service_plan_name                 = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.os_type
  sku_name            = var.app_service_plan_sku
  tags                = var.tags
  depends_on = [module.resource_group]
}

module "app_service" {
  count                = var.enable_app_service ? 1 : 0
  source               = "./evoke_aiframework_appservice"
  app_service_name     = var.app_service_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  service_plan_id = module.app_service_plan.service_plan_id
  os_type              = var.os_type
  deployment_type      = var.deployment_type
  container_image_name = var.container_image_name
  runtime_stack        = var.runtime_stack
  app_settings         = var.app_settings
  tags                 = var.tags
  depends_on = [module.resource_group]
}

# AKS Cluster
module "aks" {
  count               = var.enable_aks ? 1 : 0
  source              = "./evoke_aiframework_aks"
  aks_name            = var.aks_name
  aks_node_count      = var.aks_node_count
  aks_dns_prefix      = var.aks_dns_prefix
  aks_node_vm_size    = var.aks_node_vm_size
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
  depends_on = [module.resource_group]
}

# ACR (Azure Container Registry)
module "acr" {
  count               = var.enable_acr ? 1 : 0
  source              = "./evoke_aiframework_acr"
  resource_group_name = var.resource_group_name
  location            = var.location
  acr_name            = var.acr_name
  sku                 = var.acr_sku
  tags                = var.tags
  depends_on = [module.resource_group]
}

# Key Vault
module "keyvault" {
  count               = var.enable_keyvault ? 1 : 0
  source              = "./evoke_aiframework_keyvault"
  resource_group_name = var.resource_group_name
  location            = var.location
  keyvault_name       = var.keyvault_name
  tenant_id           = var.tenant_id
  tags                = var.tags
  depends_on = [module.resource_group]
}

# Azure Application Insights
module "azure_insights" {
  count               = var.enable_azure_insights ? 1 : 0
  source              = "./evoke_aiframework_azure_insights"
  resource_group_name = var.resource_group_name
  location            = var.location
  app_insights_name   = var.app_insights_name
  tags                = var.tags
  depends_on = [module.resource_group]
}

# Azure Monitor
module "azure_monitor" {
  count               = var.enable_azure_monitor ? 1 : 0
  source              = "./evoke_aiframework_azure_monitor"
  resource_group_name = var.resource_group_name
  location            = var.location
  monitor_name        = var.monitor_name
  tags                = var.tags
  depends_on = [module.resource_group]
}

# Cognitive Search
module "cognitive_search" {
  count               = var.enable_cognitive_search ? 1 : 0
  source              = "./evoke_aiframework_cognitive_search"
  resource_group_name = var.resource_group_name
  location            = var.location
  search_service_name = var.search_service_name
  sku                 = var.search_sku
  tags                = var.tags
  depends_on = [module.resource_group]
}

# Cosmos DB

module "cosmosdb" {
  count               = var.enable_cosmosdb ? 1 : 0
  source              = "./evoke_aiframework_cosmosdb"
  cosmosdb_account_name   = var.cosmosdb_account_name
  location                = var.location
  resource_group_name     = var.resource_group_name
  kind                    = var.kind
  tags                    = var.tags
  depends_on = [module.resource_group]
}

# Redis Cache
module "redis_cache" {
  count               = var.enable_redis_cache ? 1 : 0
  source              = "./evoke_aiframework_redis_cache"
  resource_group_name = var.resource_group_name
  location            = var.location
  redis_name          = var.redis_name
  sku_name            = var.redis_cache_sku_name
  capacity            = var.redis_cache_capacity
  enable_non_ssl_port = var.redis_cache_enable_non_ssl_port
  tags                = var.tags
  depends_on = [module.resource_group]
}

# Service Bus
module "servicebus" {
  count               = var.enable_servicebus ? 1 : 0
  source              = "./evoke_aiframework_servicebus"
  resource_group_name = var.resource_group_name
  location            = var.location
  servicebus_namespace_name                 = var.servicebus_namespace_name
  sku                 = var.servicebus_sku
  tags                = var.tags
  depends_on = [module.resource_group]
}

