
output "mysql_server_name" {
  value = azurerm_mysql_server.main.name
}

output "mysql_server_host" {
  value = azurerm_mysql_server.main.name
}

output "admin_login" {
  value = azurerm_mysql_server.main.administrator_login
}

output "admin_password" {
  value = azurerm_mysql_server.main.administrator_login_password
}

output "database_name" {
  value = azurerm_mysql_database.main.name
}


