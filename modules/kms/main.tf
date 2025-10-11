resource "aws_kms_key" "this" {
  description             = var.kms_key_name
  deletion_window_in_days = 10

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "AllowRootAccess"
        Effect    = "Allow"
        Principal = { AWS = "arn:aws:iam::992862946505:root" }
        Action    = "kms:*"
        Resource  = "*"
      },
      {
        Sid       = "AllowEC2UseOfKey"
        Effect    = "Allow"
        Principal = { Service = "ec2.amazonaws.com" }
        Action    = [
          "kms:Encrypt",
          "kms:Decrypt",
          "kms:DescribeKey",
          "kms:GenerateDataKey*"
        ]
        Resource = "*"
      }
    ]
  })

  tags = {
    Name = var.kms_key_name
  }
}

resource "aws_kms_alias" "this" {
  name          = "alias/${var.kms_key_name}"
  target_key_id = aws_kms_key.this.id
}
