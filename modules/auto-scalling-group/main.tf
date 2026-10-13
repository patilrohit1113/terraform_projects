resource "aws_autoscaling_group" "web_asg" {
  name                = "web-auto-scaling-group"
  desired_capacity    = 3
  min_size            = 1
  max_size            = 5
  vpc_zone_identifier = [
    data.terraform_remote_state.public_subnet.outputs.private_subnet_id_1a,
    data.terraform_remote_state.public_subnet.outputs.private_subnet_id_1b,
    data.terraform_remote_state.public_subnet.outputs.private_subnet_id_1c
  ]

  target_group_arns = [
    data.terraform_remote_state.target_group.outputs.tg_arn
  ]

  health_check_type         = "ELB"
  health_check_grace_period = 300

  launch_template {
    id      = data.terraform_remote_state.launch_template.outputs.lt_id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "web-asg-instance"
    propagate_at_launch = true
  }
}