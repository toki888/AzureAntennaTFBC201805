provider "azurerm" {}

resource "azurerm_resource_group" "ex01" {
  name     = "tfbc-ex01-rg"
  location = "japaneast"
}
