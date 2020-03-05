provider "aws" {
  access_key = "AKIATYXMCFEWGPEUAM5S"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "demo" {
  count = 2
  ami           = "ami-0cfee17793b08a293"
  instance_type = "t2.micro"
}
