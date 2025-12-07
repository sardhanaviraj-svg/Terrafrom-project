terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "myec2" {
  ami           = "" # Will auto-populate after import
  instance_type = "" # Will set after import

  tags = {
    Name = "my-terraform-instance"
  }
}