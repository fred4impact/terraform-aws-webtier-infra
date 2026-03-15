resource "aws_lb" "external" {

  name               = "external-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [var.web_sg]

  subnets = var.public_subnets

}

resource "aws_lb_target_group" "web" {

  port     = 80
  protocol = "HTTP"

  vpc_id = var.vpc_id

}

resource "aws_lb_listener" "http" {

  load_balancer_arn = aws_lb.external.arn

  port     = 80
  protocol = "HTTP"

  default_action {

    type             = "forward"
    target_group_arn = aws_lb_target_group.web.arn

  }

}
