resource "azurerm_virtual_network" "test_virtual_network" {
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = ["10.10.0.0/24"]
  tags                = var.tags
}
