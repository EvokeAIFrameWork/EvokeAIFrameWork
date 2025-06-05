variable "redis_name" {
  description = "Name of the Redis Cache instance"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9-]{1,63}$", var.redis_name))
    error_message = "Must be 1-63 lowercase letters, numbers or hyphens."
  }
  default     = null
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "sku_name" {
  description = "SKU name"
  type        = string
  default     = "Basic"
  validation {
    condition = var.sku_name == "Basic" || var.sku_name == "Standard" || var.sku_name == "Premium"
    error_message = "sku_name must be one of Basic, Standard, Premium"
  }
}

variable "capacity" {
  description = "The size of the Redis cache to deploy. Valid values depend on sku."
  type        = number
  default     = 0
}

variable "family" {
  description = "The family of the SKU to deploy. E.g., C, P"
  type        = string
  default     = "C"
}

variable "enable_non_ssl_port" {
  description = "Enable non-SSL port"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags for the Redis Cache resource"
  type        = map(string)
  default     = {}
}
