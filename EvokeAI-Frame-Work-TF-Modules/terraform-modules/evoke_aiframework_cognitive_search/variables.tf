variable "search_service_name" {
  description = "Name of the Azure Cognitive Search service"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9]{2,60}$", var.search_service_name))
    error_message = "Must be lowercase, 2–60 characters, no special characters."
  }
}

variable "resource_group_name" {
  description = "Resource group to deploy into"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "sku" {
  description = "SKU tier for the search service"
  type        = string
  default     = "standard"
}

variable "replica_count" {
  description = "Number of replicas (default is 1)"
  type        = number
  default     = 1
}

variable "partition_count" {
  description = "Number of partitions (default is 1)"
  type        = number
  default     = 1
}

variable "hosting_mode" {
  description = "Hosting mode for the search service"
  type        = string
  default     = "default" # Can also be "highDensity"
}

variable "tags" {
  description = "Tags to apply to the service"
  type        = map(string)
  default     = {}
}
