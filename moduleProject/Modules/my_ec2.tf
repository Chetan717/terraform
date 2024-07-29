resource "aws_default_vpc" "default" {
  
}

resource "aws_security_group" "Prod-securitygroup" {
  name = "Prod-securityGRP"
  vpc_id = aws_default_vpc.default.id 
  ingress  {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    description = "22 ssh port"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "name" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = [ aws_security_group.Prod-securitygroup.name ]
    count = 1
    tags = {
        name = "${var.myenv}-infrastructure"
    }
  
}