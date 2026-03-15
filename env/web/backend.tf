terraform {
  backend "s3" {

    bucket = "bilarn-terraform-state"

    key = "webtier/terraform.tfstate"

    region = "us-east-1"

    # dynamodb_table = "terraform-locks"
    use_lockfile = true
    encrypt      = true
  }

  required_version = ">=1.13.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.35.0"
    }
  }
}
