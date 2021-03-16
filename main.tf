provider "aws" {
  region = "us-east-2"
}

data "aws_caller_identity" "current" {}

terraform {
  backend "s3" {
    bucket  = "devops-bank"
    key     = "terraform.tfstate"
    region  = "us-east-2"

  }
}