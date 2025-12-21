# Azure Container Registry Terraform Module

This module creates an Azure Container Registry (ACR) for storing and managing Docker container images.

## Usage

```hcl
module "acr" {
    source = "./modules/acr"

    name_prefix         = "myapp"
    resource_group_name = azurerm_resource_group.rg.name
    location            = "eastus"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| `name_prefix` | Prefix for naming resources | `string` | - | Yes |
| `location` | The Azure region for resource deployment | `string` | `eastus` | No |
| `resource_group_name` | Name of the existing resource group to deploy into | `string` | - | Yes |

## Outputs

| Name | Description |
|------|-------------|
| `login_server` | The login server URL of the container registry |

## Resources Created

- Azure Container Registry (Standard SKU)