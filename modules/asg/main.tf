resource "aws_launch_template" "app" {

  name_prefix   = "app-template"
  image_id      = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"

  vpc_security_group_ids = [var.app_sg]

  iam_instance_profile {

    name = var.iam_role

  }

}

resource "aws_autoscaling_group" "app" {

  desired_capacity = 2
  max_size         = 4
  min_size         = 2

  vpc_zone_identifier = var.subnets

  launch_template {

    id      = aws_launch_template.app.id
    version = "$Latest"

  }

  target_group_arns = [var.target_group]

}
