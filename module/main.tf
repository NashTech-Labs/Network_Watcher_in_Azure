resource "azurerm_resource_group" "example" {
  name     = var.rg_VV
  location = var.location_VV
}

resource "azurerm_network_watcher" "example" {
  name                = "${var.network_watcher_name_VV}-${var.location_VV}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}