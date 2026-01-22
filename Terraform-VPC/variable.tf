variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}
variable "subnet_cidrs" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
}
variable "subnet_names" {
  description = "List of subnet names"
  type        = list(string)
  default     = ["PublicSubnet1", "PublicSubnet2"]
}
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}
variable "environment" {
  description = "Deployment environment (dev, stage, prod)"
  type        = string
}
variable "ec2_names" {
  description = "List of names for the EC2 instances"
  type        = list(string)
  default     = ["EC2_Instance_1", "EC2_Instance_2"]
}
variable "security_group_id" {
  description = "The security group ID to associate with the EC2 instance"
  type        = string
}



