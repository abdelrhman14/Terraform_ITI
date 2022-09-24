resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block =  var.subnet_public1_cidr
  #cidr_block = "10.0.0.0/24"
  availability_zone =  "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public1_subnet"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block =  var.subnet_public2_cidr
  #cidr_block = "10.0.1.0/24"
  availability_zone =  "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public2_subnet"
  }
}

resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block =  var.subnet_private1_cidr
  #cidr_block = "10.0.2.0/24"
  availability_zone =  "us-east-1a"

  tags = {
    Name = "Private1_subnet"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block =  var.subnet_private2_cidr
  #cidr_block = "10.0.3.0/24"
  availability_zone =  "us-east-1b"
  tags = {
    Name = "Private2_subnet"
  }
}