terraform {
  required_version = ">= 1.6.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0, < 7.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 5.0, < 6.0"
    }
  }
}

variable "aws_region" {
  description = "AWS region."
  type        = string
  default     = "us-east-1"
}

variable "subscription_id" {
  description = "Azure subscription ID."
  type        = string
  sensitive   = true
}

variable "azure_location" {
  description = "Azure location."
  type        = string
  default     = "East US"
}

provider "aws" {
  region = var.aws_region
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "aws_s3_bucket" "lab" {
  bucket_prefix = "terraform-multicloud-"
  force_destroy = true
}

resource "azurerm_resource_group" "lab" {
  name     = "terraform-multicloud-rg"
  location = var.azure_location
}

output "aws_bucket_name" {
  description = "AWS bucket name."
  value       = aws_s3_bucket.lab.id
}

output "azure_resource_group_name" {
  description = "Azure Resource Group name."
  value       = azurerm_resource_group.lab.name
}