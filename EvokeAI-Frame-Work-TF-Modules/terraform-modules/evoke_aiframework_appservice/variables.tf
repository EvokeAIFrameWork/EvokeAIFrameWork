variable "app_service_name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "service_plan_id" {
  type = string
}

variable "os_type" {
  type = string
}

variable "deployment_type" {
  type = string
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
