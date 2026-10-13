module "aws_public_rt" {
  source="../../modules/rt"
  aws_route_table_name=var.aws_route_table_name
}