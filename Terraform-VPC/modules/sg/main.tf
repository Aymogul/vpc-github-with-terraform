resource "aws_security_group" "sg" {
  name        = "my_security_group"
  description = "Security group for my VPC"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 

    description = "Allow SSH from anywhere"
  }
  ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow HTTP from anywhere"
  }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"] 
        description = "Allow all outbound traffic"
    }

    tags = {
        Name = "My_Security_Group"
    }
}