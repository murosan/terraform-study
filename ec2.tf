variable "access_key" {}
variable "secret_key" {}

variable "region" {
  default = "us-east-2"
}

variable "zone" {
  default = "us-east-2a"
}

variable "ami_id" {
  default = "ami-f63b1193"
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "terraform_study" {
  ami               = "${var.ami_id}"
  instance_type     = "t2.micro"
  availability_zone = "${var.zone}"
  monitoring        = false

  security_groups = ["${aws_security_group.terraform_study_sg.name}"]

  # vpc_security_group_ids = ["${aws_security_group.terransible_sg.id}"]

  tags {
    Name = "terraform_study"
  }
}
