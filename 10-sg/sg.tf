module "mysql_sg" {
  source = "git::https://github.com/AbduL-Riyaz1/terraform-aws-securitygroup.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  sg_name = "mysql-sg"
  sg_discription = "created for MYSQL instances in expense dev"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags
}

module "backend_sg" {
  source = "git::https://github.com/AbduL-Riyaz1/terraform-aws-securitygroup.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  sg_name = "backend-sg"
  sg_discription = "created for BACKEND instances in expense dev"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags
}

module "frontend_sg" {
  source = "git::https://github.com/AbduL-Riyaz1/terraform-aws-securitygroup.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  sg_name = "frontend-sg"
  sg_discription = "created for FRONTEND instances in expense dev"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags
}

module "bastion_sg" {
  source = "git::https://github.com/AbduL-Riyaz1/terraform-aws-securitygroup.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  sg_name = "bastion-sg"
  sg_discription = "created for BASTION instances in expense dev"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags
}

module "app_alb_sg" {
  source = "git::https://github.com/AbduL-Riyaz1/terraform-aws-securitygroup.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  sg_name = "app-alb-sg"
  sg_discription = "created for Backend ALB in expense dev"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags
}

