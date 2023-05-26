output "public_ip" {
  value       = aws_instance.myec2.public_ip
  description = "The public IP of the server"
}
output "instance_id" {
  value       = aws_instance.myec2.id
  description = "The ID of the server"
}