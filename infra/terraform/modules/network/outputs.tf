output "vpc_id" {
 description = "The ID of the VPC"
 value = aws_vpc.main.id
}
output "subnet_a_id" {
 description = "The ID of Subnet A"
 value = aws_subnet.subnet_a.id
}
output "subnet_b_id" {
 description = "The ID of Subnet B"
 value = aws_subnet.subnet_b.id
}
