# Module Configuration
#
# https://www.terraform.io/docs/configuration/modules.html

module "s3_access_log" {
  source = "git::https://github.com/tmknom/terraform-aws-s3-access-log.git?ref=tags/v1.0.0"
  name   = "s3-access-log"
}
