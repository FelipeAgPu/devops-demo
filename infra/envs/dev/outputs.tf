#Root Outputs
output "resource_group_name" {
  description = "Resource group for the project"
  value = azurerm_resource_group.rg.name
}

# Network Outputs
output "network_vnet_id" {
  description = "ID of the vnet created by the network module"
  value       = module.network.vnet_id
}

output "network_subnet_id" {
  description = "ID of the subnet created by the network module"
  value       = module.network.subnet_id
}

# ACR Outputs
output "acr_login_server" {
  description = "Login server of the Azure Container Registry"
  value       = module.acr.login_server
}

output "acr_id" {
  description = "ID of the Azure Container Registry"
  value       = module.acr.acr_id
}

# AKS Outputs
output "cluster_name" {
  description = "AKS cluster name"
  value = module.aks.cluster_name
}

output "cluster_id" {
  description = "AKS cluster ID"
  value = module.aks.cluster_id
}

output "kube_config" {
  value = module.aks.kube_config
  sensitive = true
}

