variable "location" {
  type        = string
  description = "Region."
}

variable "tags" {
  type        = map(string)
  description = "Tags Mapping."
}
# Azure SQL Server Variables

variable "sql_server_name" {
  type        = string
  description = "SQL server name."
}

variable "sql_server_version" {
  type        = string
  description = "SQL server version."
  default     = "12.0"
}
variable "connection_policy" {
  type        = string
  description = "Connection Policy."
  default     = "Default"
}
variable "sql_db_name"{
  type = string
  description = "Database Name"
}

variable "sql_collation"{
  type = string
}

variable "sql_db_size"{
  type = number
  description = "Database Size"
}

variable "geo_backup_enabled"{
  type = bool
  default=false
}

variable "zone_redundant"{
  type = bool
  default=false
}

variable "app_service_plan_name" {
  type        = string
  description = "Service Plan."
}
variable "app_service_name" {
  type        = string
  description = "Service Name."
}
variable "client_secret" {
}