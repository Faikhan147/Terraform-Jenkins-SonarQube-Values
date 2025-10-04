# Jenkins Outputs
output "jenkins_role_name" {
  value       = aws_iam_role.jenkins_ssm_role_name.name
  description = "Name of Jenkins IAM role"
}

output "jenkins_role_arn" {
  value       = aws_iam_role.jenkins_ssm_role_name.arn
  description = "ARN of Jenkins IAM role"
}

# SonarQube Outputs
output "sonarqube_role_name" {
  value       = aws_iam_role.sonarqube_ssm_role_name.name
  description = "Name of SonarQube IAM role"
}

output "sonarqube_role_arn" {
  value       = aws_iam_role.sonarqube_ssm_role_name.arn
  description = "ARN of SonarQube IAM role"
}
