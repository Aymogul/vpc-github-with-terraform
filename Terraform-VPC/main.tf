module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  subnet_cidrs = var.subnet_cidrs
}
module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "./modules/ec2"
  ami_id            = "ami-07ff62358b87c7116" # Example AMI ID
  instance_type     = "t2.micro"
  subnet_id         = element(module.vpc.subnet_ids, 0)
  security_group_id = module.sg.sg_id
}