variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "tags" {
  description = "Tags as key-value pairs"
  type        = map(string)
  default     = {}
}

# Storage Account variables
variable "storage_account_name" {
  description = "Storage Account Name"
  type        = string
  default     = null
}

variable "account_tier" {
  description = "Storage Account Tier (Standard or Premium)"
  type        = string
  default     = null
}

variable "replication_type" {
  description = "Storage Account Replication Type (LRS, GRS, ZRS)"
  type        = string
  default     = null
}

# App Service Plan variables
variable "enable_app_service_plan" {
  type    = bool
  default = false
}

variable "app_service_plan_name" {
  description = "App Service Plan Name"
  type        = string
  default     = null
}

variable "app_service_plan_sku" {
  description = "The SKU of the App Service Plan (e.g., B1, S1, P1v2)"
  type        = string
  default     = null
}

# App Service variables
variable "enable_app_service" {
  type    = bool
  default = false
}

variable "app_service_name" {
  description = "App Service Name"
  type        = string
  default     = null
}

variable "os_type" {
  description = "Operating System Type (Linux or Windows)"
  type        = string
  default     = null
}

variable "deployment_type" {
  description = "Deployment Type (Code or Container)"
  type        = string
  default     = null
}

variable "runtime_stack" {
  description = "Runtime Stack (.NET, Python, Node, etc.)"
  type        = string
  default     = ""
}

variable "container_image_name" {
  description = "Container image to deploy (used for container deployment)"
  type        = string
  default     = ""
}

variable "app_settings" {
  description = "Key-value pairs for app settings"
  type        = map(string)
  default     = {}
}

# AKS variables
variable "enable_aks" {
  type    = bool
  default = false
}

variable "aks_name" {
  description = "AKS Cluster Name"
  type        = string
  default     = null
}

variable "aks_node_count" {
  description = "Number of nodes in AKS cluster"
  type        = number
  default     = null
}

variable "aks_node_vm_size" {
  description = "Size of VM nodes in AKS"
  type        = string
  default     = null
}

variable "aks_dns_prefix" {
  description = "Number of nodes in AKS cluster"
  type        = number
  default     = null
}

# ACR variables
variable "enable_acr" {
  type    = bool
  default = false
}

variable "acr_name" {
  description = "Azure Container Registry Name"
  type        = string
  default     = null
}

variable "acr_sku" {
  description = "ACR SKU (Basic, Standard, Premium)"
  type        = string
  default     = null
}

# Key Vault variables
variable "enable_keyvault" {
  type    = bool
  default = false
}

variable "keyvault_name" {
  description = "Key Vault Name"
  type        = string
  default     = null
}

# Azure Insights variables
variable "enable_azure_insights" {
  type    = bool
  default = false
}

variable "app_insights_name" {
  description = "Application Insights Name"
  type        = string
  default     = null
}

# Azure Monitor variables
variable "enable_azure_monitor" {
  type    = bool
  default = false
}

variable "monitor_name" {
  description = "Azure Monitor Name"
  type        = string
  default     = null
}

# Cognitive Search variables
variable "enable_cognitive_search" {
  type    = bool
  default = false
}

variable "search_service_name" {
  description = "Azure Cognitive Search Service Name"
  type        = string
  default     = null
}

variable "search_sku" {
  description = "Azure Cognitive Search SKU"
  type        = string
  default     = null
}

# Cosmos DB variables
variable "enable_cosmosdb" {
  type    = bool
  default = false
}

variable "cosmosdb_account_name" {
  description = "The name of the Cosmos DB account"
  type        = string
  default     = null
}


variable "kind" {
  description = "The kind of Cosmos DB account (e.g., GlobalDocumentDB, MongoDB)"
  type        = string
  default     = null
}


# Redis Cache variables
variable "enable_redis_cache" {
  type    = bool
  default = false
}

variable "redis_name" {
  description = "Redis Cache Name"
  type        = string
  default     = null
}

variable "redis_cache_sku_name" {
  description = "Redis Cache SKU Name (Basic, Standard, Premium)"
  type        = string
  default     = null
}

variable "redis_cache_capacity" {
  description = "Redis Cache Capacity"
  type        = number
  default     = null
}

variable "redis_cache_enable_non_ssl_port" {
  description = "Enable Non SSL Port for Redis Cache"
  type        = bool
  default     = null
}

# Service Bus variables
variable "enable_servicebus" {
  type    = bool
  default = false
}

variable "servicebus_namespace_name" {
  description = "Service Bus Namespace Name"
  type        = string
  default     = null
}

variable "servicebus_sku" {
  description = "Service Bus SKU (Basic, Standard, Premium)"
  type        = string
  default     = null
}


# Storage Account toggle
variable "enable_storage_account" {
  type    = bool
  default = false
}
