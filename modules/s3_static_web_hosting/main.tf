resource "aws_s3_bucket" "s3_static_web_hosting" {
  bucket = var.bucket_name

  tags = {
    Name        = var.name
    environment = var.environment
  }
}

# on bucket versioning 
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.s3_static_web_hosting.id
  versioning_configuration {
    status = var.aws_s3_bucket_versioning
  }
}


resource "aws_s3_bucket_public_access_block" "block_public_access" {
  bucket = aws_s3_bucket.s3_static_web_hosting.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# uploading static website file 
resource "aws_s3_object" "index" {

  bucket = aws_s3_bucket.s3_static_web_hosting.id

  key = var.key_index

  source = "C:/Users/DELL/Desktop/terraform_projects/index.html"

  content_type = var.content_type
}
# uploading error.html object
resource "aws_s3_object" "error" {

  bucket = aws_s3_bucket.s3_static_web_hosting.id

  key = var.key_error

  source = "C:/Users/DELL/Desktop/terraform_projects/error.html"

  content_type = var.content_type
}

# on static web hosting for the bucket 
resource "aws_s3_bucket_website_configuration" "website" {

  bucket = aws_s3_bucket.s3_static_web_hosting.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}