
module "rds" {
  source = "../../../module/rds"

  project_name = var.project_name

  private_subnet_ids    = data.terraform_remote_state.for_vpc.outputs.private_subnet_ids
  rds_security_group_id = data.terraform_remote_state.for_vpc.outputs.rds_security_group_id
  kms_key_arn           = data.terraform_remote_state.for_kms.outputs.kms_key_arn

  database_name     = var.database_name
  database_username = var.database_username
  database_password = var.database_password

  instance_class = var.instance_class
}
