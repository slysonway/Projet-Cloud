
# 
resource "azurerm_function_app" "main" {
  name                      = "${var.group_name}-app-function"
  resource_group_name       = var.resource_group_name
  location                  = var.location
  app_service_plan_id       = var.app_function_service_plan_id
  storage_connection_string = var.primary_connection_string

  app_settings = {
    FUNCTIONS_WORKER_RUNTIME        = "node"
    WEBSITE_NODE_DEFAULT_VERSION    = "~10"
  }
}
