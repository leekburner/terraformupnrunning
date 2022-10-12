provider "aws" {
  region = "us-east-2"
}

variable "ami" {
  type    = string
  default = "ami-097a2df4ac947655f"
}


resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }

}

