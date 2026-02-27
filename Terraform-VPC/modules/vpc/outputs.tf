output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.my_vpc.id
}
output "subnet_ids" {
  description = "List of Subnet IDs"
  value       = aws_subnet.subnets[*].id
}
