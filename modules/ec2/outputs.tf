output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.devops-server.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.devops-server.public_ip
}

output "private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = aws_instance.devops-server.private_ip
}

output "instance_type" {
  description = "The type of the EC2 instance"
  value       = aws_instance.devops-server.instance_type
}

output "security_groups" {
  description = "The security groups associated with the EC2 instance"
  value       = aws_instance.devops-server.security_groups
}