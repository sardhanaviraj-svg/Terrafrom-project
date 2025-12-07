provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "terraform-instance" {
    ami = "ami-025ca978d4c1d9825"
    instance_type = "t2.micro"

tags = {

    Name = "my-terraform-instance"
}
}