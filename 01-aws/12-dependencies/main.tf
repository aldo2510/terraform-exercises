terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers { aws = { source = "hashicorp/aws", version = ">= 6.0, < 7.0" } }
}
provider "aws" { region = "us-east-1" }
resource "aws_s3_bucket" "source" { bucket_prefix = "dependency-source-" }
resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.source.id
  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}
