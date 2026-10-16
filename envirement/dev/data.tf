#################################################
# NETWORK REMOTE STATE
#################################################

data "terraform_remote_state" "network" {

  backend = "s3"

  config = {

    bucket = "terraform-s3-backend-rohit-11" 
    key    = "network/fctp/dev/network/terraform.tfstate"
    region = "ap-south-1"
  }
}