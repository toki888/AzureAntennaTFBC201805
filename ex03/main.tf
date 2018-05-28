provider "azurerm" {}

resource "azurerm_resource_group" "ex03" {
  name     = "${var.resource_group_name}"
  location = "${var.resource_group_location}"
}

resource "random_integer" "random_int" {
  min = 100
  max = 999
}

resource "azurerm_container_group" "aci-cg" {
  name                = "aci-cg-${random_integer.random_int.result}"
  location            = "${azurerm_resource_group.ex03.location}"
  resource_group_name = "${azurerm_resource_group.ex03.name}"
  ip_address_type     = "public"
  dns_name_label      = "${var.dns_name_label_prefix}-aci-cg-${random_integer.random_int.result}"
  os_type             = "linux"

  container {
    name   = "holleworld"
    image  = "microsoft/aci-helloworld:latest"
    cpu    = "0.5"
    memory = "1.5"
    port   = "80"
  }
}
