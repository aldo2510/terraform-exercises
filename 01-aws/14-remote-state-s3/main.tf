terraform {
  required_version = ">= 1.6.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0, < 7.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "exercise" {
  bucket_prefix = "terraform-remote-state-exercise-"

  tags = {
    Name        = "terraform-remote-state-exercise"
    Environment = "lab"
    Purpose     = "remote-state"
  }
}