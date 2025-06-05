resource "azurerm_linux_web_app" "linux" {
  count               = var.os_type == "Linux" ? 1 : 0
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
    # Only set linux_fx_version if using container
    linux_fx_version = var.deployment_type == "container" ? "DOCKER|${var.container_image_name}" : null
    always_on        = true
  }

  app_settings = var.app_settings
  tags         = var.tags
}
resource "azurerm_windows_web_app" "windows" {
  count               = var.os_type == "Windows" ? 1 : 0
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id
  site_config {
    # Only set windows_fx_version if using container
    windows_fx_version = var.deployment_type == "container" ? "DOCKER|${var.container_image_name}" : null
    always_on          = true
  }

  app_settings = var.app_settings
  tags         = var.tags
}
