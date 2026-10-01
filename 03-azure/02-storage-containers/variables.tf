variable "project_name" { type = string, default = "tf-containers" }
variable "location" { type = string, default = "East US" }
variable "containers" {
  type = set(string)
  default = ["raw", "processed", "archive"]
  validation {
    condition = length(var.containers) > 0
    error_message = "Debe existir al menos un container."
  }
}