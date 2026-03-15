output "instance_ids" {
  value = aws_instance.ec2[*].id
}

output "private_ips" {
  value = aws_instance.ec2[*].private_ip
}

output "public_ips" {
  value = aws_instance.ec2[*].public_ip
}
