provider "aws" {
  region = var.aws_region
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
provider "random" {}