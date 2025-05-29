output "name" {
  description = "Name of the App Service Plan"
  value       = azurerm_service_plan.app_service_plan.name
}
output "service_plan_id" {
  description = "ID of the App Service Plan"
  value       = azurerm_service_plan.app_service_plan.id
}
