# Jenkins IAM role
resource "aws_iam_role" "jenkins_ssm_role_name" {
  name = var.jenkins_ssm_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect    = "Allow",
      Principal = { Service = "ec2.amazonaws.com" },
      Action    = "sts:AssumeRole"
    }]
  })
}

# Attach policies
resource "aws_iam_role_policy_attachment" "attach_s3_full_access" {
  role = aws_iam_role.jenkins_ssm_role_name.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_role_policy_attachment" "attach_ssm_access" {
  role = aws_iam_role.jenkins_ssm_role_name.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

# SonarQube IAM role
resource "aws_iam_role" "sonarqube_ssm_role_name" {
  name = var.sonarqube_ssm_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect    = "Allow",
      Principal = { Service = "ec2.amazonaws.com" },
      Action    = "sts:AssumeRole"
    }]
  })
}

# Attach policies
resource "aws_iam_role_policy_attachment" "attach_ssm_role" {
  role = aws_iam_role.sonarqube_ssm_role_name.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}
