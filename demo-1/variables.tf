variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-east-1"
}

##https://www.terraform.io/docs/configuration/variables.html
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0cfee17793b08a293"
    us-west-2 = "ami-0b37e9efc396e4c38"
    eu-west-1 = "ami-03746875d916becc0"
  }
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}
