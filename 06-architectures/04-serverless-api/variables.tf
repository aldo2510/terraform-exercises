variable "subscription_id" {
  description = "Azure subscription ID."
  type = string
  sensitive = true
}

variable "location" {
  description = "Azure region."
  type = string
  default = "eastus"
}

variable "project_name" {
  description = "Short project name."
  type = string
  default = "tfapi"
}