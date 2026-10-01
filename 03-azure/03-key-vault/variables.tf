variable "project_name" { type = string, default = "tf-training" }
variable "key_vault_name" {
  type = string
  description = "Nombre globalmente único del Key Vault."
}
variable "location" { type = string, default = "East US" }
variable "tags" {
  type = map(string)
  default = { environment = "dev", owner = "student" }
}