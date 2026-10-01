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
  description = "AWS region used by the lab."
  type        = string
  default     = "us-east-1"
}

provider "aws" {
  region = var.aws_region
}

output "aws_region" {
  description = "Configured AWS region."
  value       = var.aws_region
}