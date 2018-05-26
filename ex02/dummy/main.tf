provider "azurerm" {}

resource "azurerm_resource_group" "ex02-dummy" {
  name     = "tfbc-ex02-dummy-rg"
  location = "${var.location}"
}
