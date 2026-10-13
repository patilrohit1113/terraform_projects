output "alb_dns" {
  value=aws_lb.web_alb.dns_name
}

output "alb_arn" {
  value=aws_lb.web_alb.arn
}