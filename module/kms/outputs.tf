
output "kms_key_arn" {
  value = aws_kms_key.rds.arn
}

output "kms_key_id" {
  value = aws_kms_key.rds.key_id
}
