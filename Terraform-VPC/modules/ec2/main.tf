resource "aws_instance" "ec2_instance" {
   count = length(var.ec2_names)
  ami           = data.aws_ami.amazon-2.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]
  subnet_id = var.subnets[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  user_data = templatefile("${path.module}/user_data.sh.tpl", {
  instance_name = var.ec2_names[count.index]
  LOG_FILE      = "/var/log/user-data.log"  
})
  tags = {
    Name = var.ec2_names[count.index]
  }
}