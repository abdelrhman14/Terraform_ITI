data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  subnet_id                   = module.iti_network.public_subnet_1
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  key_name                    = aws_key_pair.instance.key_name
    tags = {
    Name = "Naruto_B"
  }
}
resource "aws_instance" "application" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  subnet_id              = module.iti_network.private_subnet_1
  vpc_security_group_ids = [aws_security_group.allow_ssh3000.id]
  key_name               = aws_key_pair.instance.key_name
      tags = {
    Name = "AOT_A"
  }
}
