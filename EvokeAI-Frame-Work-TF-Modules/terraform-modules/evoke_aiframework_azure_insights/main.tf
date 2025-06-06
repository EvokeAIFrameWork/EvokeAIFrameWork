resource "azurerm_application_insights" "insights" {
  name                = var.app_insights_name
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = var.application_type
  workspace_id        = var.workspace_id
  retention_in_days   = var.retention_in_days
  tags                = var.tags
}
