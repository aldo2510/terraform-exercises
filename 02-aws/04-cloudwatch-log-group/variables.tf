variable "aws_region" { type = string, default = "us-east-1" }
variable "project_name" { type = string, default = "tf-cloudwatch" }
variable "retention_in_days" {
  type = number
  default = 7
  validation {
    condition = contains([1, 3, 5, 7, 14, 30], var.retention_in_days)
    error_message = "Use 1, 3, 5, 7, 14 o 30 días."
  }
}
variable "tags" {
  type = map(string)
  default = { environment = "dev", owner = "student" }
}