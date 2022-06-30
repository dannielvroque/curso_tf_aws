## adicionar e criar um bucket

terraform {
  required_version = ">= 0.14.4"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.20.1"
    }
  }
  
}
provider "aws"{
    region = "sa-east-1"
    profile = "tf014"
}

resource "aws_s3_bucket" "bucket-tf-danniel" {
  bucket = "test-bucket-dannieltf"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}