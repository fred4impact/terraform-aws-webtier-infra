resource "aws_db_subnet_group" "db" {

  name = "bilarn-db-subnet-group"

  subnet_ids = var.db_subnets

}

resource "aws_db_instance" "mysql" {

  identifier = "bilarn-db"

  engine         = "mysql"
  engine_version = "8.0"

  instance_class = "db.t3.micro"

  allocated_storage = 20

  db_name  = var.db_name
  username = var.db_user
  password = var.db_password

  vpc_security_group_ids = [var.db_sg]

  db_subnet_group_name = aws_db_subnet_group.db.name

  skip_final_snapshot = true

}
