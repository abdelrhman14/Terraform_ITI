resource "aws_vpc" "myvpc" {
  cidr_block =  var.vpc_cidr #"10.0.0.0/16"

  tags = {
    Name = "iti"
  }
}