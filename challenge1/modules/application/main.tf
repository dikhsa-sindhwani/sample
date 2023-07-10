resource "azurerm_app_service_plan" "test_app_service_plan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
resource "azurerm_app_service" "test_app_service" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.test_app_service_plan.id

  site_config {
    dotnet_framework_version = "v4.0"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = var.connection_value
  }
}