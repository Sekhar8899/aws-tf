resource "aws_s3_bucket" "bucket" {
  bucket = "cntr799-tf-sate"

  tags = {
    Name        = "cntr799-tf-sate"
    Environment = "Dev"
  }
}