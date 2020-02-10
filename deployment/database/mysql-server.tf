locals {
  mysql_server_login = "projectcloud"
  mysql_server_password = "esgi2020@&"
}

#Create a MySQL Server
resource "azurerm_mysql_server" "main" {
  name                = "${var.group_name}-mysql-server"
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    name     = "B_Gen5_2"
    capacity = 2
    tier     = "Basic"
    family   = "Gen5"
  }

  storage_profile {
    storage_mb            = 5120
    backup_retention_days = 7
    geo_redundant_backup  = "Disabled"
  }

  administrator_login          = local.mysql_server_login
  administrator_login_password = local.mysql_server_password
  version                      = "5.7"
  ssl_enforcement              = "Disabled"
}
