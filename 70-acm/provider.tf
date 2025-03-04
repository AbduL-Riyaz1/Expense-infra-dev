terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "tfvar-remote-state-dev"  
    key    = "expense-dev-acm"  #you should have unique keys with in the bucket. same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "tfvar-remote-state-dev"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

