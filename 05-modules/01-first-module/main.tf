terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers { aws = { source = "hashicorp/aws", version = ">= 6.0, < 7.0" } }
}
provider "aws" { region = "us-east-1" }
module "bucket" { source = "./modules/bucket", name_prefix = "module-lab-" }
output "bucket_name" { value = module.bucket.bucket_name }
