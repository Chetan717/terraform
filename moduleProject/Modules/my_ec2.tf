resource "aws_instance" "name" {
    ami = var.ami
    instance_type = var.instance_type
    count = 1
    tags = {
        name = "${var.myenv}-infrastructure"
    }
  
}