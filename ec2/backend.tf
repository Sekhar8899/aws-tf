provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "cr7-tf-state"
    kms_key_id = "ec2/tf.state"
    region = "us-east-1"
    dynamodb_table = "cr-tf-state"
  }
}