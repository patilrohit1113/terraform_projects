data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/pro-ready-archi/terraform.tfstate"
    region = "ap-south-1"
  }
}


data "terraform_remote_state" "igw" {
  backend = "s3"
  config = {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/pro-ready-archi/igw/terraform.tfstate"
    region = "ap-south-1"
  }
}


data "terraform_remote_state" "public_subnet" {
  backend = "s3"
  config = {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/pro-ready-archi/subnets/terraform.tfstate"
    region = "ap-south-1"
  }
}


data "terraform_remote_state" "nats" {
  backend = "s3"
  config = {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/pro-ready-archi/nats/terraform.tfstate"
    region = "ap-south-1"
  }
}

