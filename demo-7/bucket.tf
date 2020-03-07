terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}

data "template_file" "accesslogs-s3-readonly" {
    template = file("s3-bucket-policy.json.tpl")
    vars = {
        bucket_name = aws_s3_bucket.accesslogs.bucket
        key_prefix = "AWSLogs/*"
    }
}

resource "aws_s3_bucket" "accesslogs" {
  bucket = "access-logs-sdgg"
  acl = "private"
}

resource "aws_iam_policy" "accesslogs-readonly" {
    name = "accesslogs-logs-s3-readonly"
    path = "/"  ##path where to create the policy
    description = "Readonly access to accesslogs bucket"
    policy = data.template_file.accesslogs-s3-readonly.rendered
}
