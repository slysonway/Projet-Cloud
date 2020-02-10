

# This creates the plan that the service use
resource "azurerm_app_service_plan" "main" {
  name                = "function-app-service-plan"
  location            = var.location
  resource_group_name = var.ressource_group_name
  kind                = "FunctionApp"

  sku {
    tier = "Standard"
    size = "S1"
  }
}
