output "kms_key_arn" {
  description = "The ARN of the KMS key created by the module"
  value       = aws_kms_key.this.arn
}
