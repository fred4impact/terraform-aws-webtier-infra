variable "code_bucket" {}
variable "flowlogs_bucket" {}

resource "aws_s3_bucket" "code" {

  bucket = var.code_bucket

}

resource "aws_s3_bucket" "flowlogs" {

  bucket = var.flowlogs_bucket

}
