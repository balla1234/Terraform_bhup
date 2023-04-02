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

resource "aws_instance" "my_ec2_instance" {
   count = 4
   ami = "ami-068e3d6bc44010346"
   instance_type = "t2.micro"
   tags = {
        name = "myterrainsta= ${count.index}-test"
}
}
