resource "aws_route53_record" "this" {
  count   = length(var.records)
  zone_id = var.zone_id
  name    = var.name
  type    = "CNAME"
  ttl     = var.ttl
  records = var.records
}