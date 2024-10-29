resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.s3_bucket_name}-${terraform.workspace}"
  tags   = var.s3_tags
}

resource "aws_s3_bucket_website_configuration" "s3_bucket" {
  bucket = aws_s3_bucket.s3_bucket.bucket
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
  depends_on = [aws_s3_bucket.s3_bucket]
}