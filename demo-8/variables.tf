variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "PATH_TO_PRIVATE_KEY" {
  default = "terraform"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "terraform.pub"
}
