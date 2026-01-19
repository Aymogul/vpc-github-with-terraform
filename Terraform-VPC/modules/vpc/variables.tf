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
    default = [ "PublicSubnet1", "PublicSubnet2" ]
}
