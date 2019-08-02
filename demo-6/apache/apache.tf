module "apache-us-east"{
  source        = "../modules/apache"
  access_key    = "${var.AWS_ACCESS_KEY}"
  secret_key    = "${var.AWS_SECRET_KEY}"
  region        = "us-east-1"
  instance_type = "${var.APACHE_INSTANCE_TYPE}"
  ami           = "ami-0cfee17793b08a293"
}

module "apache-us-west"{
  source        = "../modules/apache"
  access_key    = "${var.AWS_ACCESS_KEY}"
  secret_key    = "${var.AWS_SECRET_KEY}"
  region        = "us-west-2"
  instance_type = "${var.APACHE_INSTANCE_TYPE}"
  ami           = "ami-0b37e9efc396e4c38"
}

module "apache-eu-west"{
  source        = "../modules/apache"
  access_key    = "${var.AWS_ACCESS_KEY}"
  secret_key    = "${var.AWS_SECRET_KEY}"
  region        = "eu-west-1"
  instance_type = "${var.APACHE_INSTANCE_TYPE}"
  ami           = "ami-03746875d916becc0"
}
