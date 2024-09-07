terraform {
  #required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
}

  terraform { 
    backend "s3" {
    bucket         = "teamusa-test-bucket"
    region         = "us-east-2"
    key            = "eks1/terraform.tfstate"
    # dynamodb_table = "Lock-Files"
    # encrypt        = true
  }
}
provider "aws" {
  region  = var.aws-region
}
