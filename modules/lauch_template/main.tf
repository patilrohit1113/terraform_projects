resource "aws_launch_template" "lt-for-ec2" {
name = var.lt_name
image_id = var.ami_id
instance_type = var.instace_type
key_name = "testServer"

block_device_mappings {
device_name = "/dev/sda1"
ebs {
volume_size = 20
volume_type = "gp2"
}
}

user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl enable --now httpd

    echo "<h1>Hello from Launch Template of $(hostname)</h1>" > /var/www/html/index.html
  EOF
  )


network_interfaces {
security_groups = [data.terraform_remote_state.security_group.outputs.ec2_sg_id]
}

tag_specifications {
resource_type = "instance"
tags = {
Name = "ec2-template"
}
}
}