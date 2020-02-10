provider "azurerm" {
  version = "~>1.33.0"
  subscription_id = var.azure-subscription_id
  client_id = var.azure-client_id
  client_secret = var.azure-client_secret
  tenant_id = var.azure-tenant_id
}

locals {
  group_name = "esgi-al-group-cloud5"
  location = "francecentral"
  environment = "test"
}

# Create a resource group
module "resource_group" {
  source = "./resource-group"
  group_name = local.group_name
  location = local.location
}

module "function_resource_group" {
  source = "./function-resource-group"
  group_name = local.group_name
  location = local.location
}


# MySQL Server and Mysql database
module "database" {
  source = "./database"
  location = local.location
  resource_group_name = module.resource_group.name
  group_name = local.group_name
}


module "firewall_mysql_server" {
  source = "./firewall"
  ressource_group_name = module.resource_group.name
  mysql_server_name = module.database.mysql_server_name
}

#Storage account
module "storage_account" {
  source = "./storage-account"
  location = local.location
  resource_group_name = module.function_resource_group.name
  group_name = local.group_name
}

module "app_service_plan" {
  source = "./app-service-plan"
  location = local.location
  ressource_group_name = module.resource_group.name
}

module "function_service_plan" {
  source = "./function-service-plan"
  location = local.location
  ressource_group_name = module.function_resource_group.name
}

//serverless
module "app_function_service" {
  source = "./app-function"
  location = local.location
  resource_group_name = module.function_resource_group.name
  group_name = local.group_name
  primary_connection_string = module.storage_account.primary_connection_string
  app_function_service_plan_id = module.function_service_plan.app_service_plan_id
}


#BACK
module "app_service_back" {
  source = "./app-service-back"

  group_name = local.group_name
  location = local.location
  ressource_group_name = module.resource_group.name
  mysql_server_name = module.database.mysql_server_name
  database_name = module.database.database_name
  db_admin_login = module.database.admin_login
  db_admin_password = module.database.admin_password
  app_service_plan_id = module.app_service_plan.app_service_plan_id
}

#FRONT
module "app-service-front" {
  source = "./app-service-front"
  location = local.location
  group_name = local.group_name
  ressource_group_name = module.resource_group.name
  app_service_plan_id = module.app_service_plan.app_service_plan_id
  api_hostname = module.app_service_back.hostname
}




