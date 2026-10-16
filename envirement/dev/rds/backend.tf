terraform {
  backend "s3" {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/rds_database/rds/terraform.tfstate"
    region = "ap-south-1"
  }

}