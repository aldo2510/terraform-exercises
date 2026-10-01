terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers { aws = { source = "hashicorp/aws", version = ">= 6.0, < 7.0" } }
}
provider "aws" { region = "us-east-1" }
variable "bucket_count" { type = number, default = 2 }
variable "buckets" { type = set(string), default = ["logs", "artifacts"] }
resource "aws_s3_bucket" "count" { count = var.bucket_count, bucket_prefix = "count-lab-" }
resource "aws_s3_bucket" "for_each" { for_each = var.buckets, bucket_prefix = "foreach-${each.key}-" }
output "count_buckets" { value = [for b in aws_s3_bucket.count : b.bucket] }
output "foreach_buckets" { value = { for k,b in aws_s3_bucket.for_each : k => b.bucket } }
