# infrastructure-modules/app/main.tf
provider "aws" {
  region = "us-west-1"
  # ... other provider settings ...
}
terraform {
  backend "s3" {}
}
module "app" {
  source = "/Users/andrew.pomponi/Desktop/bbterragrunt/infrastructure-modules/app"
  instance_type  = var.instance_type
  instance_count = var.instance_count
  # ... other app settings ...
}
# infrastructure-modules/app/outputs.tf
output "url" {
  value = module.app.url
}
# infrastructure-modules/app/variables.tf

variable "instance_type" {}
variable "instance_count" {}