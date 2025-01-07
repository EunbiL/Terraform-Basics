terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.3.0"

// This is to put backend storage for terraform state file. You have to create S3 and Dynamo Table on AWS.
/* 
  backend "s3" {
    bucket         = "eunbi-terraform-state"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
*/

}

provider "aws" {
  region = "us-east-1" 
  
  default_tags {
  tags = {
    Team = "DevOps"
    }
  }

}