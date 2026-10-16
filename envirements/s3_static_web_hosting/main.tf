module "s3_bucket_module" {
  source                   = "../../modules/s3_static_web_hosting"
  bucket_name              = var.bucket_name
  name                     = var.name
  environment              = var.environment
  aws_s3_bucket_versioning = var.aws_s3_bucket_versioning
  content_type = var.content_type
 key_index = var.key_index
  key_error = var.key_error
}
