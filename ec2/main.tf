resource "aws_s3_bucket" "bucket" {
  bucket = "cntr79999-logs"

  tags = {
    Name        = "cntr79999-logs"
    Environment = "Dev"
  }
}