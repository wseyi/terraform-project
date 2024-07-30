
resource "aws_instance" "devops-server" {
  ami           = var.ami
  instance_type = var.instance_type
  monitoring = true
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id = data.aws_subnet.subnet.id
  tags = {
    Name = "devops"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = data.aws_vpc.vpc.id

  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]

    from_port = 22
    to_port = 22
    protocol = "tcp"
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "devops"
  }
}