# Create a Instance in AWS 
# AMI ID 
# SG 
# Tags 

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"

}


resource "aws_instance" "test" {
  ami           = "ami-0ff89c4ce7de192ea"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-VM"
    owner = "shiva"
  }
}