resource "aws_internet_gateway" "igw" {
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id

  tags = {
    Name = var.igt_name
  }
}