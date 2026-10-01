variable "aws_region" { type = string, default = "us-east-1" }
variable "project_name" { type = string, default = "tf-lifecycle" }
variable "tags" {
  type = map(string)
  default = { environment = "dev", owner = "student" }
}