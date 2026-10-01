variable "aws_region" {
  description = "Región AWS"
  type = string
  default = "us-east-1"
}
variable "project_name" {
  description = "Nombre lógico del proyecto"
  type = string
  default = "tf-training"
}
variable "environment" {
  description = "Ambiente"
  type = string
  default = "dev"
  validation {
    condition = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Use dev, qa o prod."
  }
}
variable "tags" {
  description = "Tags adicionales"
  type = map(string)
  default = {}
}