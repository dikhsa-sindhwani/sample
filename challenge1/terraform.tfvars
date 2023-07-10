app_service_plan_name = "sample-appserviceplan01"
app_service_name      = "sample-app-service01"
location              = "eastus"
tags = {
  "Environment"         = "DEV"
  "Category"            = "APP"
  "Application"         = "Dotnet"
  "Role"                = "sample"
  "CostCentre"          = "12345"
}

sql_server_name="sampleserver"
sql_db_name ="sampleDB"