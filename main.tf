terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
   }
 }
}



 
provider "aws" {
 region = "us-east-1"
}
 
resource "aws_instance" "test_instance" {
 ami           = "ami-0182f373e66f89c85"
 instance_type = "t2.nano"
 tags = {
   Name = "test_instance"
 }
}