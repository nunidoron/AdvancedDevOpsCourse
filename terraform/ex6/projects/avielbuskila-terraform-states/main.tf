provider "aws" {
  region = "us-east-1"
}

module "bucket" {
  source      = "../../modules/s3"
  bucket_name = "nunidoron-terraform-states"
  bucket_acl  = "public-read"
}