terraform {
  backend "s3" {
    bucket = "remote-s3-backend-for-terraform-tfstate-file"
    key = "projects/cloud_front_distribution/terraform.tfstate"
    region = "ap-south-1"
  }

}