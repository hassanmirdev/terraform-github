resource "aws_db_instance" "example" {
  allocated_storage     = 20
  db_instance_class     = "db.t4g.micro"
  engine                = "mysql"
  engine_version        = "8.0"
  name                  = "exampledb"
  username              = var.db_username
  password              = var.db_password
  vpc_security_group_ids = [aws_security_group.sg.id]
  db_subnet_group_name  = aws_db_subnet_group.main.id
}
