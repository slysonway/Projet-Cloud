

# Create a resource group
resource "azurerm_resource_group" "main" {
  name     = "${var.group_name}-function-resource-groupe"
  location = var.location
}
