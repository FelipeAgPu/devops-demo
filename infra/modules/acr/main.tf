resource "azurerm_container_registry" "acr" {
  name                = "demodevregistry"
  resource_group_name = var.resource_group.name
  location            = var.resource_group.location
  sku                 = "Standard"
}