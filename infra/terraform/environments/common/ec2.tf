resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet_a.id

  tags = {
    Name = "ExampleInstance"
  }
}
