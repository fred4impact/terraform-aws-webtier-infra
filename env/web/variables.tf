variable "aws_region" {}
variable "vpc_cidr" {}

variable "public_subnets" {
  type = list(string)
}

variable "app_subnets" {
  type = list(string)
}

variable "db_subnets" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}

variable "code_bucket" {}
variable "flowlogs_bucket" {}

variable "db_name" {}
variable "db_user" {}
variable "db_password" {}
