resource "aws_instance" "public_instance" {
  ami           = "ami-0c02fb55956c7d316" # AWS 리전에 맞는 Ubuntu AMI
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_id
  tags = {
    Name = "public-instance"
  }
}

resource "aws_instance" "private_instance" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  subnet_id     = var.private_subnet_id
  tags = {
    Name = "private-instance"
  }
}