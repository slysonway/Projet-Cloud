
# Storage
resource "azurerm_storage_account" "main" {
  name                     = "storageaccountgroupe5"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_replication_type = "LRS"
  account_tier             = "Standard"
  account_kind             = "StorageV2"
}
