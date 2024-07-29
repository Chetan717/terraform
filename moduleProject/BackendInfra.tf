variable "BUCKET" {
    default = "state_bucket7"
 
}

variable "DYNAMODB_TABLE" {
  default = "remotr_state_terra"
}

variable "REGION" {
    default = "us-west-2"
}

resource "aws_dynamodb_table" "remoteState-Table" {
  name = var.DYNAMODB_TABLE
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "lockid"
  attribute {
    name = "lockid"
    type = "s"
  } 
  tags = {
    Name = var.DYNAMODB_TABLE
  }
  
}

resource "aws_s3_bucket" "my_stete_bucket717" {
  bucket = var.BUCKET
  tags = {
    Name = var.BUCKET
  }
}