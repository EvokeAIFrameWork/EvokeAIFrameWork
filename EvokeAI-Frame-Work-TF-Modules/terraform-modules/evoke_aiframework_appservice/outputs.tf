output "app_service_name" {
  value = var.os_type == "Linux" ? azurerm_linux_web_app.linux[0].name : azurerm_windows_web_app.windows[0].name
}

output "app_service_default_hostname" {
  value = var.os_type == "Linux" ? azurerm_linux_web_app.linux[0].default_hostname : azurerm_windows_web_app.windows[0].default_hostname
}
