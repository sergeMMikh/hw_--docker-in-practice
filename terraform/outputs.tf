output "application_public_ip" {
  value       = aws_instance.nginx_srv[0].public_ip
}
