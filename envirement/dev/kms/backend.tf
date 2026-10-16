terraform {
  backend "s3" {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/rds_database/kms/terraform.tfstate"
    region = "ap-south-1"
  }

}