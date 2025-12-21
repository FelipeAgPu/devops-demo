variable "resource_group" {
  description = "Existing resource group to deploy into"
  type        = object({
    name     = string
    location = string
  })
}

variable "name_prefix" {
    description = "Prefix for naming resources"
    type        = string
}