variable "name" {}

variable "ami_id" {}

variable "instance_type" {}

variable "subnets" {
  type = list(string)
}

variable "security_group" {}

variable "iam_instance_profile" {}

variable "instance_count" {
  default = 1
}

variable "associate_public_ip" {
  default = false
}
