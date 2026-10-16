terraform {
  backend "s3" {
    bucket = "remote-s3-backend-for-terraform-tfstate-file"
    key    = "projects/ACM_cert/terraform.tfstate"
    region = "ap-south-1"
  }

}
