variable "app_insights_name" {
  description = "Name of the Application Insights resource"
  type        = string
  validation {
    condition     = can(regex("^[a-zA-Z0-9-_]{4,60}$", var.app_insights_name))
    error_message = "Insights name must be 4–60 characters, alphanumeric, hyphens or underscores."
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

variable "application_type" {
  description = "Type of application to monitor"
  type        = string
  default     = "web"
}

variable "workspace_id" {
  description = "Optional Log Analytics workspace ID"
  type        = string
  default     = null
}

variable "retention_in_days" {
  description = "Retention period for logs"
  type        = number
  default     = 90
}

variable "tags" {
  description = "Optional tags"
  type        = map(string)
  default     = {}
}
