output "application_public_ip" {
  value = aws_instance.nginx_srv[0].public_ip
}

output "application_instance_id" {
  value = aws_instance.nginx_srv[0].id
}

output "application_public_dns" {
  value = aws_instance.nginx_srv[0].public_dns
}