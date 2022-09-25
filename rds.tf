resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "abdo"
  password             = "Abdo246800#"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name   = aws_db_subnet_group.database-subnet.name
}


resource "aws_db_subnet_group" "database-subnet" {
  name       = "database-subnet-group"
  subnet_ids = [module.iti_network.public_subnet_1, module.iti_network.public_subnet_2]
}