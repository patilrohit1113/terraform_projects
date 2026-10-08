module "hosted_zone_module" {
  source = "../../modules/route53(hosted_zone)"
  domain_name = var.domain_name
}