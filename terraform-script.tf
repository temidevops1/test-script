terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"  # this is an older version of the AWS provider lets see changes
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c574c8"  # Amazon Linux 2 LTS AMI
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}
