resource "aws_s3_bucket" "backend-bucket" {
  bucket = "terraform-state-bucket-dy"

  tags = {
    Name = "terraform test"
  }
}

# remote state 버전 관리
resource "aws_s3_bucket_versioning" "backend-bucket-versioning" {
  bucket = aws_s3_bucket.backend-bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}