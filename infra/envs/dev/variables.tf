variable "project" {
    description = "The name of the project"
    type        = string
    default     = "demo"
}

variable "env" {
    description = "The environment (e.g., dev, prod)"
    type        = string
    default     = "dev"
}

variable "location" {
    description = "The Azure region for resource deployment"
    type        = string
    default     = "eastus"
}