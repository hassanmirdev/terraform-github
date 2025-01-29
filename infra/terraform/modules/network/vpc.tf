resource "aws_vpc" "main" {
 cidr_block = var.vpc_cidr
 tags = {
 Name = "Tf-VPC"
 }
}
resource "aws_subnet" "subnet_a" {
 vpc_id = aws_vpc.main.id
 cidr_block = var.subnet_a_cidr
 availability_zone = "us-east-1a"
 map_public_ip_on_launch = true
}
resource "aws_subnet" "subnet_b" {
 vpc_id = aws_vpc.main.id
 cidr_block = var.subnet_b_cidr
 availability_zone = "us-east-1b"
 map_public_ip_on_launch = true
}
resource "aws_internet_gateway" "gw" {
 vpc_id = aws_vpc.main.id
 tags = {
 Name = "tf-Internet Gateway"
 }
}
resource "aws_route_table" "rtable" {
 vpc_id = aws_vpc.main.id
 tags = {
 Name = "Tf-RouteTable"
 }
}
resource "aws_route" "default_route" {
 route_table_id = aws_route_table.rtable.id
 destination_cidr_block = "0.0.0.0/0"
 gateway_id = aws_internet_gateway.gw.id
}
