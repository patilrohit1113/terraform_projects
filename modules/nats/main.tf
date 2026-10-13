resource "aws_eip" "pub_sub_1a_epi" {
 domain = "vpc"
}

resource "aws_eip" "pub_sub_1b_epi" {
 domain = "vpc"
}

resource "aws_eip" "pub_sub_1c_epi" {
 domain = "vpc"
}

resource "aws_nat_gateway" "nat_1a" {
 allocation_id = aws_eip.pub_sub_1a_epi.id
 subnet_id = data.terraform_remote_state.public_subnet.outputs.subnet_id
 tags = {
   Name = var.pub_subnet_1a_nat_name
 }
 depends_on = [data.terraform_remote_state.igw]
}


resource "aws_nat_gateway" "nat_1b" {
 allocation_id = aws_eip.pub_sub_1b_epi.id
 subnet_id = data.terraform_remote_state.public_subnet.outputs.subnet_id_1b
 tags = {
   Name = var.pub_subnet_1b_nat_name
 }
 depends_on = [data.terraform_remote_state.igw]
}


resource "aws_nat_gateway" "nat_1c" {
 allocation_id = aws_eip.pub_sub_1c_epi.id
 subnet_id = data.terraform_remote_state.public_subnet.outputs.subnet_id_1c
 tags = {
   Name = var.pub_subnet_1c_nat_name
 }
 depends_on = [data.terraform_remote_state.igw]
}

