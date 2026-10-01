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

variable "platform_name" {
  description = "Common logical platform name."
  type        = string
  default     = "terraform-class"
}

variable "environment" {
  description = "Common environment."
  type        = string

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Environment must be dev, qa or prod."
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

resource "aws_s3_bucket" "app" {
  bucket_prefix = format("%s-%s-", var.platform_name, var.environment)
  force_destroy = true

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_resource_group" "app" {
  name     = format("%s-%s-rg", var.platform_name, var.environment)
  location = var.azure_location

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

output "aws_bucket_name" {
  description = "AWS bucket created for the workload."
  value       = aws_s3_bucket.app.id
}

output "azure_resource_group_name" {
  description = "Azure Resource Group created for the workload."
  value       = azurerm_resource_group.app.name
}

output "environment" {
  description = "Common environment input."
  value       = var.environment
}