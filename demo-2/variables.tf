variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-0cfee17793b08a293"
    us-west-2 = "ami-0b37e9efc396e4c38"
    eu-west-1 = "ami-03746875d916becc0"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "terraform.pem"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "terraform.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
