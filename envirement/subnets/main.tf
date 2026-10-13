module "aws_pub_01_sub" {
  source = "../../modules/subnets"
  cidr_block=var.cidr_block
  public-1-ap-south-1a_name=var.public-1-ap-south-1a_name
  az = var.az
  az_pub_1b=var.az_pub_1b
  public-1-ap-south-1b_name=var.public-1-ap-south-1b_name
  cidr_block_pub_1b=var.cidr_block_pub_1b
  az_pub_1c=var.az_pub_1c
  cidr_block_pub_1c=var.cidr_block_pub_1c
  public-1-ap-south-1c_name=var.public-1-ap-south-1c_name
  az_pri_1a=var.az_pri_1a
  cidr_block_pri_1a=var.cidr_block_pri_1a
  private-1-ap-south-1a_name=var.private-1-ap-south-1a_name
  private-1-ap-south-1b_name=var.private-1-ap-south-1b_name
  cidr_block_pri_1b=var.cidr_block_pri_1b
  az_pri_1b=var.az_pri_1b
  private-1-ap-south-1c_name=var.private-1-ap-south-1c_name
  az_pri_1c=var.az_pri_1c
  cidr_block_pri_1c=var.cidr_block_pri_1c
}
