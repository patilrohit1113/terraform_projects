module "alb_tg" {
  source = "../../modules/target_group"
  aws_lb_target_group_name=var.aws_lb_target_group_name
  tag=var.tag
}