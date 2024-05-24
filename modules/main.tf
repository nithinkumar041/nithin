module "ec2" {
  source = "./ec2"
  ami = var.ami
  ec2type = var.ec2type
  subnet_id = module.vpc.subnet
}
module "vpc" {
  source = "./vpc"
  vpcname = var.vpcname
  cidr_block_vpc = var.cidr_block_vpc
  publicsubnetname = var.publicsubnetname
  cidr_block_publicsubnet = var.cidr_block_publicsubnet
  privatesubnetname = var.privatesubnetname
  cidr_block_privatesubnet = var.cidr_block_privatesubnet
  routecidr = var.routecidr
  securitygroupname = var.securitygroupname
  port_no_inbound = var.port_no_inbound
  cidr_block_inbound = var.cidr_block_inbound
}
module "iamrole" {
  source = "./iam"
  rolename = var.rolename
}
module "s3" {
  source = "./s3"
  bucketname = var.bucket
}
