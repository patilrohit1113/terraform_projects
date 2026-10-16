data "terraform_remote_state" "for_vpc" {
  backend = "s3"
  config = {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/rds_database/rds/vpc/terraform.tfstate"
    region = "ap-south-1"
  }
}

data "terraform_remote_state" "for_kms" {
  backend = "s3"
  config = {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/rds_database/kms/terraform.tfstate"
    region = "ap-south-1"
  }
}
