provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0cfee17793b08a293"
  instance_type = "t2.micro"
}
