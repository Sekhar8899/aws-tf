terraform {
  backend "s3" {
    bucket = "cr7-tf-state"
    key = "ec2/tf.state"
    region = "us-east-1"
    dynamodb_table = "cr-tf-state"
  }
}