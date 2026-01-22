resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count = length(var.ec2_names)
  subnet_id     = element(var.subnet_ids, count.index)   
  vpc_security_group_ids = [var.security_group_id]
  associate_public_ip_address = true
  user_data = templatefile("${path.module}/user_data.sh.tpl", {
  instance_name = var.ec2_names[count.index]
  LOG_FILE      = "/var/log/user-data.log"
  environment   = var.environment   
})


  

  tags = {
    Name = var.ec2_names[count.index]
  }
}