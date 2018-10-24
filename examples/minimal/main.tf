# Module Configuration
#
# https://www.terraform.io/docs/configuration/modules.html

module "s3_access_log" {
  source = "../../"
  name   = "s3-access-log"
}
