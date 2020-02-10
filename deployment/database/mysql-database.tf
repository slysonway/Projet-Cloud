locals {
  database_name = "db_cloud"
}

#Create a MySQL database
resource "azurerm_mysql_database" "main" {
  name                = local.database_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_server.main.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}
