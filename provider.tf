terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-state-bucket-dy"
    key            = "terraform/state-test/terraform.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  region = "ap-northeast-2"
}