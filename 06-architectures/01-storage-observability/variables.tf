variable "aws_region" {
  description = "AWS region where the lab will be deployed."
  type = string
  default = "us-east-1"
}

variable "bucket_prefix" {
  description = "Prefix used to generate a unique S3 bucket name."
  type = string
  default = "tf-architecture-storage"
}