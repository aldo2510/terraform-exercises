variable "project_name" {
  type = string
  default = "tftraining"
  validation {
    condition = can(regex("^[a-z0-9-]+$", var.project_name))
    error_message = "Use minúsculas, números y guiones."
  }
}
variable "environment" {
  type = string
  default = "dev"
  validation {
    condition = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Use dev, qa o prod."
  }
}
variable "location" {
  type = string
  default = "East US"
}
variable "tags" {
  type = map(string)
  default = {}
}