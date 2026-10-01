variable "aws_region" {
  description = "AWS region."
  type = string
  default = "us-east-1"
}

variable "subscription_id" {
  description = "Azure subscription ID."
  type = string
  sensitive = true
}

variable "azure_location" {
  description = "Azure region."
  type = string
  default = "eastus"
}

variable "project_name" {
  description = "Common project name."
  type = string
  default = "tfmulti"
}