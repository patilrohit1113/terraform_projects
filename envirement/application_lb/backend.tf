terraform {
  backend "s3" {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/pro-ready-archi/alb/terraform.tfstate"
    region = "ap-south-1"
  }

}