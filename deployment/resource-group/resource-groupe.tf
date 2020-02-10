

# Create a resource group
resource "azurerm_resource_group" "main" {
  name     = "${var.group_name}-ressource-groupe"
  location = var.location
}
