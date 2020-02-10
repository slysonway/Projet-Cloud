locals {
  db_port = "3306"
}

# This creates the service definition
resource "azurerm_app_service" "back" {
  name                = "${var.group_name}-back-app-service"
  location            =  var.location
  resource_group_name =  var.ressource_group_name
  app_service_plan_id =  var.app_service_plan_id

  site_config {
    scm_type = "LocalGit"
    linux_fx_version = "NODE|10.14"
  }

  app_settings = {
    # These are app specific environment variables
    "DB_HOST" = "${var.mysql_server_name}.mysql.database.azure.com"
    "DB_USER" = "${var.db_admin_login}@${var.mysql_server_name}"
    "DB_PWD"  = var.db_admin_password
    "DB_PORT" = local.db_port
    "DB_NAME" = var.database_name
  }
}
