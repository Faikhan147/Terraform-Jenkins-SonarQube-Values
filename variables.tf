variable "vpc_id" {}
variable "region" { type = string }
variable "jenkins_ssm_role_name" { type = string }
variable "sonarqube_ssm_role_name" { type = string }
variable "jenkins_kms_key_name" { type = string }
variable "sonarqube_kms_key_name" { type = string }
variable "jenkins_sg_name" { type = string }
variable "sonarqube_sg_name" { type = string }
