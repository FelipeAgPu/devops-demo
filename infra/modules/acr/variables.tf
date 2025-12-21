variable "resource_group" {
  description = "Existing resource group to deploy into"
  type        = object({
    name     = string
    location = string
  })
}