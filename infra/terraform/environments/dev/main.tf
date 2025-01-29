provider "aws" {
 region = "us-east-1"
}
module "vpc" {
 source = "./modules/vpc"
 vpc_cidr = "10.0.0.0/16"
 subnet_a_cidr = "10.0.1.0/24"
 subnet_b_cidr = "10.0.2.0/24"
}
module "ec2_instance" {
 source = "./modules/ec2_instance"
 ami_value = "ami-0e2c8caa4b6378d8c"
 instance_type_value = "t2.micro"
 #vpc_id = module.vpc.vpc_id
}
output "public-ip-address" {
 value = module.ec2_instance.public-ip-address
}
