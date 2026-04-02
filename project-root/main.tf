provider "aws" {
   region = var.aws_region
}

terraform {
  backend "s3" {
    bucket         = "terraform-state-nikhil-99"   
    key            = "prod/terraform.tfstate"      
    region         = "us-east-1"                   
    dynamodb_table = "terraform-locks"             
  }
}
#=================================================================
module "network" {
  source = "./modules/vpc"
  cidr_block = var.vpc_cidr
}

module "web_server" {
  source = "./modules/ec2"
  ami = var.ami
  instance_type = var.instance_type
  name = var.name
  subnet_id = module.network.subnet_id
}