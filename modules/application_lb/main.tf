resource "aws_lb" "web_alb" {
  name               = "web-application-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [
    data.terraform_remote_state.security_group.outputs.alb_sg_id
  ]

  subnets = [
    data.terraform_remote_state.public_subnet.outputs.subnet_id,
    data.terraform_remote_state.public_subnet.outputs.subnet_id_1b,
    data.terraform_remote_state.public_subnet.outputs.subnet_id_1c
  ]

  enable_deletion_protection = false

  tags = {
    Name = "web-application-alb"
  }
}


resource "aws_lb_listener" "web_listener" {
  load_balancer_arn = aws_lb.web_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = data.terraform_remote_state.target_group.outputs.tg_arn
  }
}