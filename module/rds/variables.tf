
variable "project_name" {
  description = "Project name"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs from the VPC"
  type        = list(string)
}

variable "rds_security_group_id" {
  description = "Security group ID for PostgreSQL"
  type        = string
}

variable "kms_key_arn" {
  description = "KMS key ARN for database encryption"
  type        = string
}

variable "database_name" {
  description = "Initial PostgreSQL database name"
  type        = string
}

variable "database_username" {
  description = "Master username"
  type        = string
}

variable "database_password" {
  description = "Master password"
  type        = string
  sensitive   = true
}

variable "engine_version" {
  description = "PostgreSQL engine version"
  type        = string
  default     = "16"
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}
