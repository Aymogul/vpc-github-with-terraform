output "instances" {
  description = "List of EC2 instance IDs"
  value = aws_instance.web.*.id
}