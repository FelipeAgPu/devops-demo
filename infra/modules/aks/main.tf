resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.name_prefix}-k8s"
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
  dns_prefix          = "${var.name_prefix}-k8s"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DC2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }
}