data "terraform_remote_state" "s3_remote_backend" {
  backend = "s3"
  config = {
    bucket = "remote-s3-backend-for-terraform-tfstate-file"
    key = "projects/s3_static_web_hosting/terraform.tfstate"
    region = "ap-south-1"
  }
}
