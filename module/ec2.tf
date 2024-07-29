resource "aws_default_vpc" "default" {
  
}

resource "aws_security_group" "prod-security-grp" {
  name = "prod-security-grp"
  vpc_id = aws_default_vpc.default.id
  ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
  }
egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "prodlevel" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    security_groups = [aws_security_group.prod-security-grp.name]
    tags = {
      Name = "${var.myenv}-infra"
    }
  
}