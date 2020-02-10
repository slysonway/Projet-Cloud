output "azurerm_resource_group_name" {
  value = module.resource_group.name
}

output "azurerm_function_ressource_groupe" {
  value = module.function_resource_group.name
}

output "azurerm_resource_group_location" {
  value = local.location
}

output "front_app_service_name" {
  value = module.app-service-front.name
}

output "back_app_service_name" {
  value = module.app_service_back.name
}

output "function_app_service_name" {
  value = module.app_function_service.name
}

output "database_name" {
  value = module.database.database_name
}

output "database_admin_login" {
  value = module.database.admin_login
}

output "database_admin_password" {
  value = module.database.admin_password
}

output "mysql_server_name" {
  value = module.database.mysql_server_name
}
