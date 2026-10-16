

output "vpc_id" {
  value = module.vpc_module.vpc_id
}

output "private_subnet_ids" {
  value = module.vpc_module.private_subnet_ids
}

output "rds_security_group_id" {
  value = module.vpc_module.rds_security_group_id
}
