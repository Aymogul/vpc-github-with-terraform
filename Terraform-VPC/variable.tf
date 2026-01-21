variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}
variable "subnet_cidrs" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
}
variable "availability_zones" {
  description = "List of availability zones for the subnets"
  type        = list(string)
}
variable "subnet_names" {
    description = "List of subnet names"
    type        = list(string)
    default = [ "PublicSubnet1", "PublicSubnet2" ]
}
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}

