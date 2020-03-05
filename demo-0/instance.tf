provider "aws" {
  access_key = "XXXXXX"
  secret_key = "XXXXXX"
  region     = "us-east-1"
}

resource "aws_instance" "demo" {
  count = 2
  ami           = "ami-0cfee17793b08a293"
  instance_type = "t2.micro"
}
