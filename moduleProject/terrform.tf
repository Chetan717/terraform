terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  } 
  backend "s3" {
    bucket = "state_bucket7"
    key = "terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "remotr_state_terra"
  }
}
