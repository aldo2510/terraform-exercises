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

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "lab" {
  bucket_prefix = "terraform-output-"
  force_destroy = true
}

output "bucket_name" {
  description = "S3 bucket name."
  value       = aws_s3_bucket.lab.id
}

output "bucket_arn" {
  description = "S3 bucket ARN."
  value       = aws_s3_bucket.lab.arn
}

output "region" {
  description = "AWS region."
  value       = var.aws_region
}