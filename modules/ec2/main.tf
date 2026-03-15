resource "aws_instance" "ec2" {

  count = var.instance_count

  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id = element(var.subnets, count.index)

  vpc_security_group_ids = [
    var.security_group
  ]

  iam_instance_profile = var.iam_instance_profile

  associate_public_ip_address = var.associate_public_ip

  tags = {
    Name = "${var.name}-${count.index}"
  }

}
