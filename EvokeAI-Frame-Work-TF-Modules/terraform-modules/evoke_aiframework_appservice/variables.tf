variable "app_service_name" {
  type = string
  default     = null
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "service_plan_id" {
  type = string
  default     = null
}

variable "os_type" {
  type = string
  default     = null
}

variable "deployment_type" {
  type = string
  default     = null
}

variable "container_image_name" {
  type = string
  default = ""
}

variable "runtime_stack" {
  type = string
  default = ""
}

variable "app_settings" {
  type = map(string)
  default = {}
}

variable "tags" {
  type = map(string)
  default = {}
}
