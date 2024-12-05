terraform {
  backend "s3" {
    bucket = "cr7-tf-state"
    key = "vpc/tf.state"
    dynamodb_table = "cr-tf-state"
    region = "us-east-1"
    assume_role = {
      role_arn = "arn:aws:iam::640168410393:role/GitHubActionsDeployerRole"
    }
  }
}