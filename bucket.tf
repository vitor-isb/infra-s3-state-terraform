resource "aws_s3_bucket" "state-bucket" {
  bucket        = var.bucket_name
  force_destroy = true
}


resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.state-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}