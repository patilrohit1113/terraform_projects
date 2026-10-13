resource "aws_subnet" "public-1-ap-south-1a" {
  vpc_id            = data.terraform_remote_state.network.outputs.vpc_id
  cidr_block        = var.cidr_block
  availability_zone = var.az

  tags = {
    Name = var.public-1-ap-south-1a_name
  }
}

resource "aws_subnet" "public-1-ap-south-1b" {
  vpc_id            = data.terraform_remote_state.network.outputs.vpc_id
  cidr_block        = var.cidr_block_pub_1b
  availability_zone = var.az_pub_1b

  tags = {
    Name = var.public-1-ap-south-1b_name
  }
}

resource "aws_subnet" "public-1-ap-south-1c" {
  vpc_id            = data.terraform_remote_state.network.outputs.vpc_id
  cidr_block        = var.cidr_block_pub_1c
  availability_zone = var.az_pub_1c

  tags = {
    Name = var.public-1-ap-south-1c_name
  }
}

# --- Private Subnets ---

resource "aws_subnet" "private-1-ap-south-1a" {
  vpc_id            = data.terraform_remote_state.network.outputs.vpc_id
  cidr_block        = var.cidr_block_pri_1a
  availability_zone = var.az_pri_1a

  tags = {
    Name = var.private-1-ap-south-1a_name
  }
}

resource "aws_subnet" "private-1-ap-south-1b" {
  vpc_id            = data.terraform_remote_state.network.outputs.vpc_id
  cidr_block        = var.cidr_block_pri_1b
  availability_zone = var.az_pri_1b

  tags = {
    Name = var.private-1-ap-south-1b_name
  }
}

resource "aws_subnet" "private-1-ap-south-1c" {
  vpc_id            = data.terraform_remote_state.network.outputs.vpc_id
  cidr_block        = var.cidr_block_pri_1c
  availability_zone = var.az_pri_1c

  tags = {
    Name = var.private-1-ap-south-1c_name
  }
}