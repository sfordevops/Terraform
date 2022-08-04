resource "aws_instance" "test" {
  ami           = "ami-0ff89c4ce7de192ea"
  subnet_id     = aws_subnet.public-subnets.id
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-VM"
    owner = "shiva"
  }
}