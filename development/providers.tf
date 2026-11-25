terraform {
  required_version = "1.17.2" # Replace with your installed version
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.74.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Project   = "Terraform_training"
      ManagedBy = "Terraform"
    }
  }
}
