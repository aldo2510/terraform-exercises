terraform {
  required_version = ">= 1.6.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0, < 7.0"
    }
  }
}

variable "aws_region" {
  description = "AWS region."
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment."
  type        = string

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Environment must be dev, qa or prod."
  }
}

variable "retention_in_days" {
  description = "CloudWatch retention period."
  type        = number
  default     = 7

  validation {
    condition     = contains([1, 3, 5, 7, 14, 30, 60, 90], var.retention_in_days)
    error_message = "Use a retention value supported by this exercise."
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_cloudwatch_log_group" "lab" {
  name              = format("/terraform/class/%s", var.environment)
  retention_in_days = var.retention_in_days
}

output "log_group_name" {
  description = "Log Group name."
  value       = aws_cloudwatch_log_group.lab.name
}