terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.97.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "TEST-PF-RG-001"
    storage_account_name = "testpfst001"
    container_name       = "test-pf-terraform"
    key                  = "platform_resources4.tfstate"
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
  client_id       = var.CLIENT_ID
  tenant_id       = var.TENANT_ID
  subscription_id = var.SUBSCRIPTION_ID
  client_secret   = var.CLIENT_SECRET
}
