

output "hostname" {
  value = azurerm_app_service.front.default_site_hostname
}

output "user_credentials" {
  value = azurerm_app_service.front.site_credential
}

output "source_control" {
  value = azurerm_app_service.front.source_control
}

output "name" {
  value = azurerm_app_service.front.name
}
