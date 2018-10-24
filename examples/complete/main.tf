# Module Configuration
#
# https://www.terraform.io/docs/configuration/modules.html

module "s3_access_log" {
  source = "git::https://github.com/tmknom/terraform-aws-s3-access-log.git?ref=tags/v1.0.0"
  name   = "s3-access-log"

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
    Name        = "s3-access-log"
  }
}
