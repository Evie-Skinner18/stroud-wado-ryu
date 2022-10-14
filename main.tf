terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "261219435789_SandboxUser"
  region  = "eu-west-2"
  access_key = var.aws_access_id
  secret_key = var.aws_access_key
}

resource "aws_instance" "app_server" {
  ami           = "ami-06672d07f62285d1d"
  instance_type = "t2.micro"
  tags = {
    Name = "Evie's app server instance"
  }
}

