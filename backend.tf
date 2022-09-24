terraform {
  backend "s3" {
    bucket = "terraform-test2-s3"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "test"
  }
}