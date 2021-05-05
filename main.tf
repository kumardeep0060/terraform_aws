resource "aws_instance" "aws_terraform_jenkins" {
  ami             = "ami-0bcf5425cdc1d8a85"
  instance_type   = "${var.instance_type}"
  key_name        = "${var.key_name}"
  
  }
