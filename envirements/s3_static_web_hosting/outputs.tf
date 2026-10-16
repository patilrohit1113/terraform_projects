output "bucket_arn" {
  value = module.s3_bucket_module.bucket_arn
}

output "bucket" {
  value = module.s3_bucket_module.bucket
}

output "bucket_regional_domain_name" {
  value = module.s3_bucket_module.bucket_regional_domain_name
}