
locals {
  ip_adress_start = "0.0.0.0"
  ip_adress_end = "255.255.255.255"
}

resource "azurerm_mysql_firewall_rule" "main" {
  name                = "public_access_firewall_rule"
  resource_group_name = var.ressource_group_name
  server_name         = var.mysql_server_name
  start_ip_address    = local.ip_adress_start
  end_ip_address      = local.ip_adress_end
}
