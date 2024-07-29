resource "aws_s3_bucket" "name" {
  bucket = "${var.myenv}-bucket"
  tags = {
    name = "${var.myenv}-buckets3"
  }
}