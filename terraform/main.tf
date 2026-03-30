terraform {
  backend "s3" {
    bucket  = "habibi-321-123-542"
    key     = "dev/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
}
}
module "s3" {
  source = "./module"

  bucket_name = var.bucket_name
  env         = var.env
}