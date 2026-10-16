terraform {
  backend "s3" {
    bucket = "remote-s3-backend-for-terraform-tfstate-file"
    key = "projects/s3_static_web_hosting/terraform.tfstate"
    region = "ap-south-1"
  }

}