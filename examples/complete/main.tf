# Module Configuration
#
# https://www.terraform.io/docs/configuration/modules.html

module "s3_access_log" {
  source = "git::https://github.com/tmknom/terraform-aws-s3-access-log.git?ref=master"
  name   = "s3-access-log"

  versioning_enabled = false
  force_destroy      = true

  tags = {
    Environment = "prod"
    Name        = "s3-access-log"
  }
}
