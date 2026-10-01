variable "project_name" { type = string, default = "tf-training" }
variable "location" { type = string, default = "East US" }
variable "sku" {
  type = string
  default = "PerGB2018"
  validation {
    condition = var.sku == "PerGB2018"
    error_message = "Use PerGB2018 para este laboratorio."
  }
}
variable "retention_in_days" {
  type = number
  default = 30
  validation {
    condition = var.retention_in_days >= 30 && var.retention_in_days <= 730
    error_message = "La retención debe estar entre 30 y 730 días."
  }
}
variable "tags" {
  type = map(string)
  default = { environment = "dev", owner = "student" }
}