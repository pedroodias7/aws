terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "s3-bucket-pds-pt123"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.bucket.id
  key    = "file.txt"
  source = "file.txt"

  etag = filemd5("file.txt")
}