provider "aws" {
  region = "us-east-1a"
}

module "vpc" {
  source     = "../common/vpc"
  vpc_cidr   = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "ec2" {
  source       = "../common/ec2"
  ami      = var.ami
  instance_type = var.instance_type
}

module "rds" {
  source       = "../common/rds"
  db_username  = "admin"
  db_password  = "password"
}
