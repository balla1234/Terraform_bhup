terraform {
    required_providers {
        aws = {
        source = "hashicorp/aws"
        version = ">=4.16"
}
}
required_version = ">=1.2.0"
}

provider "aws" {
region = "ap-northeast-1"
}

locals {
     instance_names = toset {"sejal","terra", "Dev","Prod"}
}


resource "aws_instance" "my_ec2_instance" {
   for_each = local.instance_names
   ami = "ami-068e3d6bc44010346"
   instance_type = "t2.micro"
   tags = {
        Name = each.key
}
}
~
