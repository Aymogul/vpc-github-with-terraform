terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }
  backend "s3" {
    bucket = "ay-terraform-remote-backend-s3"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1" 
}