variable "monitor_name" {
  description = "Name of the Log Analytics Workspace"
  type        = string
  validation {
    condition     = can(regex("^[a-zA-Z0-9-_]{4,63}$", var.monitor_name))
    error_message = "Workspace name must be 4–63 characters, alphanumeric, hyphens or underscores."
  }
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "sku" {
  description = "Pricing tier for Log Analytics"
  type        = string
  default     = "PerGB2018"
}

variable "retention_in_days" {
  description = "Retention period for logs"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Optional tags"
  type        = map(string)
  default     = {}
}
