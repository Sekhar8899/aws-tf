resource "aws_s3_bucket" "bucket" {
  bucket = "cntr79999-logs"

  tags = {
    Name        = "cntr79999-logs"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}