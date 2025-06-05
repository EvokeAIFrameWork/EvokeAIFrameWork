terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}  # Ensure this is present

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}
