


#
# Authentication
#
#subscription_id = "e667767c-fd47-4cd1-a250-96c1905e95db"
#client_id = "c7f1c22f-e605-4842-ac2a-b7f9bcdb17b9"
#client_secret = "24ec2b17-3dce-4f07-9c7e-2d9026fb1503"
#tenant_id = "a9d17b18-ac3f-469d-ae1f-7946b8f63ec4"

variable "azure-subscription_id" {
  type = string
}

variable "azure-client_id" {
  type = string
}

variable "azure-client_secret" {
  type = string
}

variable "azure-tenant_id" {
  type = string
}




#
# NAMING
#
variable "group" {
  type = string
  default = "allan_valentin_bastien"
}

variable "mysql_server_name" {
  type = string
  default = "esgi-cloud"
}

variable "mysql_server_login" {
  type = string
  default = "esgi-cloud"
}

variable "mysql_server_password" {
  type = string
  default = "@pqProject@2020"
}

variable "database_name" {
  type = string
  default = "e_pq"
}


variable "ip_adress_start" {
  type = string
  default = "0.0.0.0"
}

variable "ip_adress_end" {
  type = string
  default = "255.255.255.255"
}
