module "lt_module" {
  source="../../modules/lauch_template"
  lt_name=var.lt_name
  instace_type=var.instace_type
  ami_id=var.ami_id
}