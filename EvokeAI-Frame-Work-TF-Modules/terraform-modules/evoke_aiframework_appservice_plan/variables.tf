variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group in which to create the App Service Plan"
  type        = string
}

variable "os_type" {
  description = "OS type: Windows or Linux"
  type        = string
  default     = "Linux"
}

variable "sku_name" {
  description = "SKU for App Service Plan (e.g., B1, S1, P1v2)"
  type        = string
  default     = "B1"
}

variable "tags" {
  description = "Tags to associate with the App Service Plan"
  type        = map(string)
  default     = {}
}
