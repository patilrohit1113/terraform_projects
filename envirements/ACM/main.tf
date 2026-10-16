module "aws_acm_certificate" {
  source      = "../../modules/ACM"
  domain_name = var.domain_name
  region      = var.region
  Environment = var.Environment
}
