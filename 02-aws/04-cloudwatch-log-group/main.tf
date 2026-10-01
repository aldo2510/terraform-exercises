terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 6.0" }
  }
}
provider "aws" { region = var.aws_region }

resource "aws_cloudwatch_log_group" "this" {
  name              = "/training/${var.project_name}"
  retention_in_days = var.retention_in_days
  tags              = var.tags
}