output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.devops-server.id
}

#output "public_ip" {
#  description = "The public IP address of the EC2 instance"
#  value       = aws_instance.devops-server.public_ip
#}

#output "private_ip" {
#  description = "The private IP address of the EC2 instance"
#  value       = aws_instance.devops-server.private_ip
#}

#output "public_dns" {
#  description = "The public DNS name of the EC2 instance"
#  value       = aws_instance.my_ec2_instance.public_dns
#}

#output "instance_type" {
#  description = "The type of the EC2 instance"
#  value       = aws_instance.devops-server.instance_type
#}

#output "availability_zone" {
#  description = "The availability zone where the EC2 instance is deployed"
#  value       = aws_instance.my_ec2_instance.availability_zone
#}

#output "security_groups" {
#  description = "The security groups associated with the EC2 instance"
#  value       = aws_instance.devops-server.security_groups
#}