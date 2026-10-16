
output "db_endpoint" {
  description = "PostgreSQL endpoint including port"
  value       = aws_db_instance.main.endpoint
}

output "db_address" {
  description = "PostgreSQL hostname"
  value       = aws_db_instance.main.address
}

output "db_port" {
  description = "PostgreSQL port"
  value       = aws_db_instance.main.port
}

output "db_name" {
  description = "Database name"
  value       = aws_db_instance.main.db_name
}

output "db_identifier" {
  description = "RDS instance identifier"
  value       = aws_db_instance.main.identifier
}

output "db_arn" {
  description = "RDS instance ARN"
  value       = aws_db_instance.main.arn
}
