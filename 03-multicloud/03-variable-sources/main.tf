terraform {
  required_version = ">= 1.6.0, < 2.0.0"
}
variable "environment" { type = string, default = "dev" }
output "environment" { value = var.environment }
