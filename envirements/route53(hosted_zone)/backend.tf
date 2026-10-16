terraform {
  backend "s3" {
    bucket = "remote-s3-backend-for-terraform-tfstate-file"
    key    = "projects/hosted_zone/terraform.tfstate"
    region = "ap-south-1"
  }

}
