terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 6.0" }
    random = { source = "hashicorp/random", version = "~> 3.6" }
  }
}

provider "aws" {
  region = var.aws_region
  default_tags { tags = local.common_tags }
}

resource "random_id" "suffix" { byte_length = 4 }

resource "aws_s3_bucket" "this" {
  bucket = "${var.project_name}-${var.environment}-${random_id.suffix.hex}"
}

locals {
  common_tags = merge(var.tags, { environment = var.environment })
}