output "virtual_network_name" {
    value = azurerm_virtual_network.test_virtual_network.name
    description = "Virtual Network" 
}
output "virtual_network_id" {
    value = azurerm_virtual_network.test_virtual_network.id
    description = "Virtual Network Id" 
}
