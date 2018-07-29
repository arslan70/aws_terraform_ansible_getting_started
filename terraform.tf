##################################################################################
# VARIABLES
##################################################################################

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}
variable "key_name" {
  default = "MyAwsKey"
}

##################################################################################
# PROVIDERS
##################################################################################

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-2"
}

##################################################################################
# RESOURCES
##################################################################################

resource "aws_instance" "aws_terraform_ansible_getting_started_service1" {
  ami           = "ami-f63b1193"
  instance_type = "t2.micro"
  key_name        = "${var.key_name}"

  connection {
    user        = "ec2-user"
    private_key = "${file(var.private_key_path)}"
  }
  tags {
    Service = "Service1"
  }

  
}

resource "aws_instance" "aws_terraform_ansible_getting_started_service2" {
  ami           = "ami-f63b1193"
  instance_type = "t2.micro"
  key_name        = "${var.key_name}"

  connection {
    user        = "ec2-user"
    private_key = "${file(var.private_key_path)}"
  }
  tags {
    Service = "Service2"
  }

  
}

##################################################################################
# OUTPUT
##################################################################################

