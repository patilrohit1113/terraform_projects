module "security_group" {
  source="../../modules/security_group"
  alb_sg_name=var.alb_sg_name
  ec2_sg_name=var.ec2_sg_name
}
