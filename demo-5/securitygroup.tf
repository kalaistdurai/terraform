terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket = "sunil-terraform-12345"      ##Eg: terraform-demo1234
    key    = "demo5/statefile"     ##Eg: "terraform/demo5"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.AWS_REGION
}

data "aws_ip_ranges" "european_ec2" {
  regions  = ["eu-west-1"]
  services = ["ec2"]
}

resource "aws_security_group" "from_europe" {
  name = "from_europe"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = data.aws_ip_ranges.european_ec2.cidr_blocks
  }
  tags = {
    CreateDate = data.aws_ip_ranges.european_ec2.create_date
  }
}
