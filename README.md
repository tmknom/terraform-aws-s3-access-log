# terraform-aws-s3-access-log

Terraform module which creates S3 Access Log Bucket resources on AWS.

## Usage

### Minimal

```hcl
module "s3_access_log" {
  source = "git::https://github.com/tmknom/terraform-aws-s3-access-log.git?ref=tags/v1.0.0"
  name   = "s3-access-log"
}
```

### Complete

```hcl
module "s3_access_log" {
  source = "git::https://github.com/tmknom/terraform-aws-s3-access-log.git?ref=tags/v1.0.0"
  name   = "s3-access-log"

  versioning_enabled = false
  force_destroy      = true

  tags = {
    Environment = "prod"
    Name        = "s3-access-log"
  }
}
```

## Examples

- [Minimal](https://github.com/tmknom/terraform-aws-s3-access-log/tree/master/examples/minimal)
- [Complete](https://github.com/tmknom/terraform-aws-s3-access-log/tree/master/examples/complete)

## Inputs

| Name               | Description                                                                                                               |  Type  | Default | Required |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------- | :----: | :-----: | :------: |
| force_destroy      | A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. | string | `false` |    no    |
| name               | The name of the bucket, which must comply with DNS naming conventions.                                                    | string |    -    |   yes    |
| tags               | A mapping of tags to assign to the bucket.                                                                                |  map   | `<map>` |    no    |
| versioning_enabled | Enable versioning. Versioning is a means of keeping multiple variants of an object in the same bucket.                    | string | `true`  |    no    |

## Outputs

| Name                     | Description                                                            |
| ------------------------ | ---------------------------------------------------------------------- |
| s3_bucket_arn            | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname.      |
| s3_bucket_domain_name    | The bucket domain name. Will be of format bucketname.s3.amazonaws.com. |
| s3_bucket_hosted_zone_id | The Route 53 Hosted Zone ID for this bucket's region.                  |
| s3_bucket_id             | The name of the bucket.                                                |
| s3_bucket_region         | The AWS region this bucket resides in.                                 |

## Development

### Requirements

- [Docker](https://www.docker.com/)

### Configure environment variables

```shell
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=ap-northeast-1
```

### Installation

```shell
git clone git@github.com:tmknom/terraform-aws-s3-access-log.git
cd terraform-aws-s3-access-log
make install
```

### Makefile targets

```text
docs                           Generate docs
format                         Format code
help                           Show help
install                        Install requirements
lint                           Lint code
terraform-apply-complete       Run terraform apply examples/complete
terraform-apply-minimal        Run terraform apply examples/minimal
terraform-destroy-complete     Run terraform destroy examples/complete
terraform-destroy-minimal      Run terraform destroy examples/minimal
terraform-plan-complete        Run terraform plan examples/complete
terraform-plan-minimal         Run terraform plan examples/minimal
```

## License

Apache 2 Licensed. See LICENSE for full details.
