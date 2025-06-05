variable "cosmosdb_account_name" {
  description = "Name of the Cosmos DB account"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9-]{3,44}$", var.cosmosdb_account_name))
    error_message = "Must be 3-44 lowercase letters, numbers or hyphens."
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

variable "kind" {
  description = "Kind of Cosmos DB API"
  type        = string
  default     = "GlobalDocumentDB"  # Options: GlobalDocumentDB (SQL), MongoDB, Cassandra, Gremlin, Table
}


variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}
