resource "azurerm_virtual_network" "network" {
  name                = "${var.name_prefix}-vnet"
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.name_prefix}-subnet"
  virtual_network_name = "${var.name_prefix}-vnet"
  resource_group_name  = var.resource_group_name
  address_prefixes     = ["10.0.1.0/24"]
}