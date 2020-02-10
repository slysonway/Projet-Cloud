

# This creates the plan that the service use
resource "azurerm_app_service_plan" "main" {
  name                = "back-app-service-plan"
  location            = var.location
  resource_group_name = var.ressource_group_name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}
