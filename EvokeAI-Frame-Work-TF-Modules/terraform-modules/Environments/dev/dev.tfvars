# General settings
subscription_id        = "c3445c94-e383-4529-af5e-f575d47309bd"
tenant_id              = "e1c5d9ee-a951-451e-8432-642c23d40071"
enable_resource_group = true
resource_group_name    = "evokeaiframework-rg"
location               = "East US"

# Storage Account
enable_storage_account = true
storage_account_name   = "evokeaiframeworksg"
account_tier           = "Standard"
replication_type       = "LRS"

# App Service Plan
enable_app_service_plan = true
app_service_plan_name        = "evokeaiframework-appserviceplan"
app_service_plan_sku  = "B1"


# App Service
enable_app_service   = true
app_service_name     = "evokeaiframework-webapp"
os_type              = "Linux"
deployment_type      = "Code"
runtime_stack        = "DOTNET|6.0"
container_image_name = ""  # Leave empty for code deployments
app_settings = {
  "APP_ENV" = "development"
  "DEBUG"   = "true"
}

# AKS
enable_aks         = true
aks_name           = "evokeaiframework-aks"
aks_node_count     = 2
aks_node_vm_size   = "Standard_DS2_v2"
aks_dns_prefix     = 123  # Please check if this should be a string; seems like a mislabeling in variables.tf

# ACR
enable_acr = true
acr_name   = "evokeaiframeworkacr"
acr_sku    = "Basic"

# Key Vault
enable_keyvault = true
keyvault_name   = "evokeaiframework-key"

# Azure Insights
enable_azure_insights = true
app_insights_name     = "evokeaiframework-insights"

# Azure Monitor
enable_azure_monitor = true
monitor_name         = "evokeaiframework-monitor"

# Cognitive Search
enable_cognitive_search = true
search_service_name     = "evokeaiframeworksearch"
search_sku              = "basic"

# Cosmos DB
enable_cosmosdb               = true
cosmosdb_account_name     = "dev-cosmosdb-account"
kind                      = "GlobalDocumentDB"

# Redis Cache
enable_redis_cache                = true
redis_name                       = "evokeaiframework-redis"
redis_cache_sku_name             = "Basic"
redis_cache_capacity             = 1
redis_cache_enable_non_ssl_port = false

# Service Bus
enable_servicebus           = true
servicebus_namespace_name   = "evokeaiframework-servicebus"
servicebus_sku              = "Basic"
