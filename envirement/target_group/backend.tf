terraform {
  backend "s3" {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/pro-ready-archi/target-group/terraform.tfstate"
    region = "ap-south-1"
  }

}