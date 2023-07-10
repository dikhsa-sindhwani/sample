output "private_endpoint_name" {
  value       = azurerm_private_endpoint.private_endpoint.name
  description = "Endpoint name."
}
output "private_endpoint_id" {
  value       = azurerm_private_endpoint.private_endpoint.id
  description = "Endpoint ID."
}
output "private_endpoint_fqdn" {
  value       = azurerm_private_endpoint.private_endpoint.custom_dns_configs[0].fqdn
  description = "Endpoint FQDN."
}
output "private_endpoint_ip_address" {
  value       = azurerm_private_endpoint.private_endpoint.custom_dns_configs[0].ip_addresses[0]
  description = "Endpoint IP address."
}