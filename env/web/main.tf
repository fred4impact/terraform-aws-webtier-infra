module "vpc" {

  source = "../../modules/vpc"

  vpc_cidr       = var.vpc_cidr
  azs            = var.azs
  public_subnets = var.public_subnets
  app_subnets    = var.app_subnets
  db_subnets     = var.db_subnets

}

module "security_groups" {

  source = "../../modules/security-groups"

  vpc_id = module.vpc.vpc_id

}

module "iam" {

  source = "../../modules/iam"

}

module "s3" {

  source = "../../modules/s3"

  code_bucket     = var.code_bucket
  flowlogs_bucket = var.flowlogs_bucket

}

module "alb" {

  source = "../../modules/alb"

  vpc_id         = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnets
  web_sg         = module.security_groups.web_sg_id

}


module "web_ec2_public" {

  source = "../../modules/ec2"

  name = "web-server"

  ami_id = data.aws_ami.ubuntu_ami.id

  instance_type = "t3.micro"

  subnets = module.vpc.public_subnets

  security_group = module.security_groups.web_sg

  iam_instance_profile = module.iam.instance_role

  instance_count = 2

  associate_public_ip = true

}


module "app_ec2_private" {

  source = "../../modules/ec2"

  name = "app-server"

  ami_id = data.aws_ami.ubuntu_ami.id

  instance_type = "t3.micro"

  subnets = module.vpc.app_subnets

  security_group = module.security_groups.app_sg

  iam_instance_profile = module.iam.instance_role

  instance_count = 2

  associate_public_ip = false

}
