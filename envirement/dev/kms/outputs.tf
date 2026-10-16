
output "kms_key_arn" {
  value = module.aws_kms_key.kms_key_arn
}

output "kms_key_id" {
  value = module.aws_kms_key.kms_key_id
}
