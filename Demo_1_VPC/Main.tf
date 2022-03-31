terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-southeast-2"
}


data "aws_vpcs" "foo" {
   tags = {
    
  }
}

output "foo" {
  value = data.aws_vpcs.foo.ids
}

