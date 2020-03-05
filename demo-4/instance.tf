terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket = "sunil-terraform-12345"     ##Eg: terraform-demo1234
    key    = "demo4/statefile"     ##Eg: "terraform/demo4"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.AWS_REGION
}

resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
  }
}

output "public_instance_ip" {
  value = aws_instance.example.public_ip
}
