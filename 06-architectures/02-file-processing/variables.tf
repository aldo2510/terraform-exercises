variable "aws_region" {
  description = "AWS region."
  type = string
  default = "us-east-1"
}

variable "bucket_prefix" {
  description = "Prefix used to generate a unique S3 bucket name."
  type = string
  default = "tf-architecture-files"
}

variable "lambda_name" {
  description = "Lambda function name."
  type = string
  default = "tf-file-processor"
}