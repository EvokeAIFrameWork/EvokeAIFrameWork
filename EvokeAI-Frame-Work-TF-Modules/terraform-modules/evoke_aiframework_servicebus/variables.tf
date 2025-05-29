variable "servicebus_namespace_name" {
  description = "Name of the Service Bus namespace"
  type        = string
  validation {
    condition     = can(regex("^[a-zA-Z0-9-]{6,50}$", var.servicebus_namespace_name))
    error_message = "Must be 6-50 characters, letters, numbers, or hyphens."
  }
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "sku" {
  description = "SKU of the Service Bus namespace"
  type        = string
  default     = "Standard"
  validation {
    condition     = var.sku == "Basic" || var.sku == "Standard" || var.sku == "Premium"
    error_message = "sku must be one of Basic, Standard, Premium"
  }
}

variable "capacity" {
  description = "Capacity of the SKU"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Tags for the Service Bus namespace"
  type        = map(string)
  default     = {}
}
