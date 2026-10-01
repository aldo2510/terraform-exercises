variable "aws_region" { type = string, default = "us-east-1" }
variable "table_name" {
  type = string
  default = "tf-training-table"
  validation {
    condition = can(regex("^[A-Za-z0-9_.-]+$", var.table_name))
    error_message = "El nombre contiene caracteres no permitidos."
  }
}
variable "tags" {
  type = map(string)
  default = { environment = "dev", owner = "student" }
}