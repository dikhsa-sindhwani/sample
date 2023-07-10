resource "random_password" "sql_administrator_password" {
  length           = 16
  min_upper        = 2
  min_lower        = 2
  min_special      = 2
  number           = true
  special          = true
  override_special = "!@#$%&"
}
resource "azurerm_mssql_server" "sql_server" {
  name                          = var.sql_server_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  version                       = var.sql_server_version
  administrator_login           = "sqladmin"
  administrator_login_password  = random_password.sql_administrator_password.result
  connection_policy             = var.connection_policy
  public_network_access_enabled = false
  minimum_tls_version           = "1.2"
}
resource "azurerm_mssql_database" "sql_database" {
  name                        = var.sql_db_name
  server_id                   = azurerm_mssql_server.sql_server.id
  collation                   = var.sql_collation
  max_size_gb                 = var.sql_db_size
  geo_backup_enabled          = var.geo_backup_enabled
  zone_redundant              = var.zone_redundant
  tags                        = var.tags
}