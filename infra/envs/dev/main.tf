# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

locals {
  name_prefix = "${var.project}-${var.env}"
  common_tags = {
    project = var.project
    env     = var.env
    region  = var.location
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "${local.name_prefix}-rg"
  location = var.location
}

module "network" {
  source = "../../modules/network"
  location = var.location
  name_prefix = local.name_prefix
  resource_group_name = azurerm_resource_group.rg.name
}

module "acr" {
  source = "../../modules/acr"
  resource_group = azurerm_resource_group.rg
}

module "aks" {
  source = "../../modules/aks"
  name_prefix = local.name_prefix
  resource_group = azurerm_resource_group.rg
}