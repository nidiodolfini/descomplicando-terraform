output "ip_address" {
  value = aws_instance.web.public_ip
}

output "ip_address_web_sa" {
  value = aws_instance.web.public_ip
}