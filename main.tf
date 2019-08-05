locals {
  common_tags = {
    environment = var.environment_name
    owner       = var.owner_name
    ttl         = var.ttl
  }
}

resource "aws_kms_key" "main" {
  key_usage               = "ENCRYPT_DECRYPT"
  policy                  = var.policy
  deletion_window_in_days = var.deletion_window_in_days
  is_enabled              = true
  enable_key_rotation     = true

  tags = merge(local.common_tags, var.tags == null ? {} : var.tags, { Name = var.name })
}

resource "aws_kms_alias" "main" {
  name          = "alias/${var.name}"
  target_key_id = aws_kms_key.main.id
}
