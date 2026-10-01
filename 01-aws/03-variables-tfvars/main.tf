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

variable "project_name" {
  description = "Project name."
  type        = string
}

variable "environment" {
  description = "Environment name."
  type        = string
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "lab" {
  bucket_prefix = format("%s-%s-", var.project_name, var.environment)
  force_destroy = true
}

output "bucket_name" {
  description = "Created bucket."
  value       = aws_s3_bucket.lab.id
}