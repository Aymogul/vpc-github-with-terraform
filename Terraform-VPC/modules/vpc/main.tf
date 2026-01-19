# VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "My_VPC"
  }
}

# Subnet
resource "aws_subnet" "subnets" {
count = length(var.subnet_cidrs)
vpc_id            = aws_vpc.my_vpc.id
cidr_block       = var.subnet_cidrs[count.index]
availability_zone = data.aws_availability_zones.available.names[count.index]
map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_names[count.index]
  }
}

# Internet Gateway

# Route Table

# Route Table Association