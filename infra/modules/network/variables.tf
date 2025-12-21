variable "name_prefix" {
    description = "Prefix for naming resources"
    type        = string
}

variable "location" {
    description = "The Azure region for resource deployment"
    type        = string
}

variable "tags" {
    description = "A map of tags to assign to resources"
    type        = map(string)
    default     = {}
}

variable "resource_group_name" {
  description = "Name of the existing resource group to deploy into"
  type        = string
}