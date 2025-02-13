module "vpc" {
  # source = "../terraform-aws-vpc"
  source = "git::https://github.com/AbduL-Riyaz1/terraform-aws-vpc.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  vpc_cidr = var.vpc_cidr
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags
  public_subnet_CIDR = var.public_subnet_CIDR
  private_subnet_CIDR = var.private_subnet_CIDR
  database_subnet_CIDR = var.database_subnet_CIDR
  is_peering_required = true
}