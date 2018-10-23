# Resource Configuration
#
# https://www.terraform.io/docs/configuration/resources.html

# https://www.terraform.io/docs/providers/aws/r/s3_bucket.html
resource "aws_s3_bucket" "default" {
  bucket = "${var.name}"

  # S3 access control lists (ACLs) enable you to manage access to buckets and objects.
  # https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html
  #
  # Server access logging provides detailed records for the requests that are made to a bucket.
  # S3 uses a special log delivery account, called the Log Delivery group, to write access logs.
  # Server access log records are delivered on a best effort basis.
  # https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerLogs.html
  acl = "log-delivery-write"
}
