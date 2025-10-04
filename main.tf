module "iam" {
  source = "./modules/iam"
  jenkins_ssm_role_name = var.jenkins_ssm_role_name
  sonarqube_ssm_role_name = var.sonarqube_ssm_role_name
}

module "jenkins_kms" {
  source      = "./modules/kms"
  kms_key_name = var.jenkins_kms_key_name
}

module "sonarqube_kms" {
  source      = "./modules/kms"
  kms_key_name = var.sonarqube_kms_key_name
}

module "jenkins_sg" {
  source        = "./modules/security-group"
  vpc_id        = var.vpc_id
  sg_name       = var.jenkins_sg_name
}

module "sonarqube_sg" {
  source        = "./modules/security-group"
  vpc_id        = var.vpc_id
  sg_name       = var.sonarqube_sg_name
}
