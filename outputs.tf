# Outputs from module
output "jenkins_role_name" {
  value = module.iam.jenkins_role_name
}

output "sonarqube_role_name" {
  value = module.iam.sonarqube_role_name
}

output "jenkins_kms_key_arn" {
  value       = module.jenkins_kms.kms_key_arn
}

output "sonarqube_kms_key_arn" {
  value       = module.sonarqube_kms.kms_key_arn
}

output "jenkins_sg_id" {
  description = "Jenkins Security Group ID"
  value       = module.jenkins_sg.sg_id
}

output "sonarqube_sg_id" {
  description = "SonarQube Security Group ID"
  value       = module.sonarqube_sg.sg_id
}
