module "aws_nat" {
  source="../../modules/nats"
  pub_subnet_1b_nat_name=var.pub_subnet_1b_nat_name
  pub_subnet_1c_nat_name=var.pub_subnet_1c_nat_name
  pub_subnet_1a_nat_name=var.pub_subnet_1a_nat_name

}