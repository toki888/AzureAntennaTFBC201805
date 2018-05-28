output "ip_address" {
  value = "${azurerm_container_group.aci-cg.ip_address}"
}

output "fqdn" {
  value = "${azurerm_container_group.aci-cg.fqdn}"
}
