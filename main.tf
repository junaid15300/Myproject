terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_instance" "ansible" {
    ami = var.my_ami
    instance_type = var.my_instance_type
    count = 4
    key_name = var.my_keyname

  
}

resource "aws_s3_bucket" "myproject15300" {
    bucket = var.my_s3bucket
    tags = {
      "Name" = "Myproject15300"
    }
  
}

resource "aws_vpc" "myprojectvpc" {
    cidr_block = var.my_cidrblock
  
}

