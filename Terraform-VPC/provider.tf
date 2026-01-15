terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }
  backend "s3" {
    bucket = "mybucket"
    key    = "ay-terraform-remote-backend-s3"
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1" 
}