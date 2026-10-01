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

variable "buckets" {
  description = "Buckets to create."
  type = map(object({
    prefix = string
  }))
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "lab" {
  for_each = var.buckets

  bucket_prefix = format("%s-", each.value.prefix)
  force_destroy = true

  tags = {
    Name = each.key
  }
}

output "bucket_names" {
  description = "Buckets indexed by logical key."
  value       = { for key, bucket in aws_s3_bucket.lab : key => bucket.id }
}