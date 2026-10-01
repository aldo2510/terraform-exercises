terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers { aws = { source = "hashicorp/aws", version = ">= 6.0, < 7.0" } }
}
provider "aws" { region = var.region }
variable "project" { type = string, default = "Terraform Lab" }
variable "environment" { type = string, default = "dev" }
variable "region" { type = string, default = "us-east-1" }
locals { normalized = replace(lower(var.project), " ", "-") }
resource "aws_s3_bucket" "this" { bucket_prefix = "${local.normalized}-${var.environment}-" }
output "normalized_name" { value = local.normalized }
