


#FRONT
resource "azurerm_app_service" "front" {
  name                = "${var.group_name}-front-app-service"
  location            =  var.location
  resource_group_name =  var.ressource_group_name
  app_service_plan_id =  var.app_service_plan_id

  site_config {
    scm_type = "LocalGit"
    linux_fx_version = "PHP|7.0"
  }

  app_settings = {
    "API_URL" : "https://${var.api_hostname}"
  }
}
