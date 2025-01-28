provider "aws" {
  region = "us-east-1a"
}

module "vpc" {
  source     = "../common/vpc"
  vpc_cidr   = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
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
