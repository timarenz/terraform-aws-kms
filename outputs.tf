output "arn" {
  value = aws_kms_key.main.arn
}

output "id" {
  value = aws_kms_key.main.id
}

output "alias_arn" {
  value = aws_kms_alias.main.arn
}

output "alias_name" {
  value = aws_kms_alias.main.name
}
