provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source      = "../common"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "ec2_instance" {
  source      = "../common"
  ami         = var.ami
  instance_type = var.instance_type
}

module "rds" {
  source       = "../common"
  db_username  = var.db_username
  db_password  = var.db_password
}
