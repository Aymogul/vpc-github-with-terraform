variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}
variable "subnet_ids" {
  description = "The subnet ID where the EC2 instance will be launched"
  type        = list(string)
}
variable "security_group_id" {
  description = "The security group ID to associate with the EC2 instance"
  type        = string
}
variable "ec2_names" {
  description = "List of names for the EC2 instances"
  type        = list(string)
  default     = ["EC2_Instance_1", "EC2_Instance_2"]
  
}
variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}


