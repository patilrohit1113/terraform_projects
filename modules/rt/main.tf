resource "aws_route_table" "public_rt" {
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.terraform_remote_state.igw.outputs.igw_id
  }

  tags = {
    Name = var.aws_route_table_name
  }
}


resource "aws_route_table_association" "public_subnet_association" {
  for_each = toset([
    data.terraform_remote_state.public_subnet.outputs.subnet_id,
    data.terraform_remote_state.public_subnet.outputs.subnet_id_1b,
    data.terraform_remote_state.public_subnet.outputs.subnet_id_1c
  ])

  subnet_id      = each.value
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table" "my-private-rt-ap-south-1a" {
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = data.terraform_remote_state.nats.outputs.nat_1a_id
  }

  tags = {
    Name = "route_table_for_private_sub_1a"
  }
}


resource "aws_route_table" "my-private-rt-ap-south-1b" {
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = data.terraform_remote_state.nats.outputs.nat_1b_id
  }

  tags = {
    Name = "route_table_for_private_sub_1b"
  }
}

resource "aws_route_table" "my-private-rt-ap-south-1c" {
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = data.terraform_remote_state.nats.outputs.nat_1c_id
  }

  tags = {
    Name = "route_table_for_private_sub_1c"
  }
}


resource "aws_route_table_association" "pri_subnet_association_1a" {
  subnet_id      = data.terraform_remote_state.public_subnet.outputs.private_subnet_id_1a
  route_table_id = aws_route_table.my-private-rt-ap-south-1a.id
}



resource "aws_route_table_association" "pri_subnet_association_1b" {
  subnet_id      = data.terraform_remote_state.public_subnet.outputs.private_subnet_id_1b
  route_table_id = aws_route_table.my-private-rt-ap-south-1b.id
}



resource "aws_route_table_association" "pri_subnet_association_1c" {
  subnet_id      = data.terraform_remote_state.public_subnet.outputs.private_subnet_id_1c
  route_table_id = aws_route_table.my-private-rt-ap-south-1c.id
}

