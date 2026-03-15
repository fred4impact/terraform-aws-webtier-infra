output "web_sg_id" {
  description = "ID of the web security group"
  value       = aws_security_group.web.id
}

output "app_sg_id" {
  description = "ID of the app security group"
  value       = aws_security_group.app.id
}

output "db_sg_id" {
  description = "ID of the db security group"
  value       = aws_security_group.db.id
}

output "web_sg" {
  value = aws_security_group.web.id
}

output "app_sg" {
  value = aws_security_group.app.id
}

output "db_sg" {
  value = aws_security_group.db.id
}
