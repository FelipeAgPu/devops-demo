# AKS Module

## Overview
Terraform module for deploying an Azure Kubernetes Service (AKS) cluster.

## Usage
```hcl
module "aks" {
    source = "./modules/aks"

    name_prefix    = "myapp"
    resource_group = {
        name     = azurerm_resource_group.rg.name
        location = azurerm_resource_group.rg.location
    }
}
```

## Inputs
| Name | Description | Type |
|------|-------------|------|
| `name_prefix` | Prefix for naming resources | `string` |
| `resource_group` | Existing resource group to deploy into | `object({ name = string, location = string })` |

## Outputs
| Name | Description |
|------|-------------|
| `cluster_name` | AKS cluster name |
| `cluster_id` | AKS cluster resource ID |
| `resource_group_name` | Resource group name |

## Notes
- Creates a single-node AKS cluster with system-assigned managed identity
- Default node pool uses `Standard_DS2_v2` VM size