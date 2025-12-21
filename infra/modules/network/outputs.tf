output "vnet_id" {
    description = "ID of the virtual network"
    value       = azurerm_virtual_network.network.id
}

output "vnet_name" {
    description = "Name of the virtual network"
    value       = azurerm_virtual_network.network.name
}

output "vnet_address_space" {
    description = "Address space(s) of the virtual network"
    value       = azurerm_virtual_network.network.address_space
}

output "subnet_id" {
    description = "Subnet IDs"
    value       = azurerm_subnet.subnet.id
}
output "subnet_name" {
    description = "Name of the subnet"
    value       = azurerm_subnet.subnet.name
}