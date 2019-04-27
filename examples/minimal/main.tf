module "s3_access_log" {
  source = "../../"
  name   = "s3-access-log-${random_id.suffix.dec}"
}

resource "random_id" "suffix" {
  byte_length = 8
}
