data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/pro-ready-archi/terraform.tfstate"
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

 

data "terraform_remote_state" "security_group" {
  backend = "s3"
  config = {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/pro-ready-archi/security-group/terraform.tfstate"
    region = "ap-south-1"
  }
}
  
data "terraform_remote_state" "target_group" {
  backend = "s3"
  config = {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/pro-ready-archi/target-group/terraform.tfstate"
    region = "ap-south-1"
  }
}


data "terraform_remote_state" "launch_template" {
  backend = "s3"
  config = {
    bucket = "terraform-s3-backend-rohit-11"
    key = "projects/pro-ready-archi/subnets/terraform.tfstate"
    region = "ap-south-1"
  }
}