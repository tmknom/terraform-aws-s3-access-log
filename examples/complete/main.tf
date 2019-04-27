module "s3_access_log" {
  source = "../../"
  name   = "s3-access-log-${random_id.suffix.dec}"

  versioning_enabled = false
  force_destroy      = true

  lifecycle_rule_enabled                     = true
  lifecycle_rule_prefix                      = ""
  standard_ia_transition_days                = "60"
  glacier_transition_days                    = "90"
  expiration_days                            = "180"
  glacier_noncurrent_version_transition_days = "60"
  noncurrent_version_expiration_days         = "90"

  tags = {
    Environment = "prod"
    Name        = "s3-access-log-${random_id.suffix.dec}"
  }
}

resource "random_id" "suffix" {
  byte_length = 8
}
