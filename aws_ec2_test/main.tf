terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" # Ensure this matches your 'aws configure' region
}

resource "aws_instance" "my_first_server" {
  ami           = "ami-0c101f26f147fa7fd" # Ubuntu 24.04 AMI (us-east-1)
  instance_type = "t3.micro"              # Free-tier eligible

  tags = {
    Name = "DevOps-Test-Server"
  }
}
