terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = " 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "mahesh"
}

# Create a VPC

terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
