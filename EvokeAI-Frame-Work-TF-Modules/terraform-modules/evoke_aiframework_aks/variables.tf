variable "enable_aks" {
  description = "Enable or disable AKS provisioning"
  type        = bool
  default     = false
}

variable "aks_name" {
  description = "AKS Cluster Name"
  type        = string
}

variable "aks_node_count" {
  description = "Number of nodes in AKS cluster"
  type        = number
}

variable "aks_node_vm_size" {
  description = "Size of VM nodes in AKS"
  type        = string
}

variable "aks_dns_prefix" {
  description = "DNS Prefix for AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "tags" {
  description = "Tags for AKS cluster"
  type        = map(string)
  default     = {}
}
