provider "azurerm" {
  features {}
  version = "=2.96.0"
  subscription_id = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
  client_id       = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
  client_secret   = var.client_secret
  tenant_id       = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "testrgX1"
    storage_account_name = "teststorage"
    container_name       = "testcontainer"
    key                  = "abcd.tfstate"
    subscription_id      = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
  }
}

