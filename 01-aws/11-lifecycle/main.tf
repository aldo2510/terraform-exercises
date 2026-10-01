terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers { aws = { source = "hashicorp/aws", version = ">= 6.0, < 7.0" } }
}
provider "aws" { region = "us-east-1" }
resource "aws_s3_bucket" "protected" {
  bucket_prefix = "lifecycle-lab-"
  lifecycle { prevent_destroy = true }
}
