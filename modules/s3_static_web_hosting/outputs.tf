output "bucket_arn" {
  value = aws_s3_bucket.s3_static_web_hosting.arn
}

output "bucket" {
  value = aws_s3_bucket.s3_static_web_hosting.id
}

output "bucket_regional_domain_name" {
  value = aws_s3_bucket.s3_static_web_hosting.bucket_regional_domain_name
}