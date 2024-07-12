terraform {
  backend "s3" {
    bucket = "my-application-1"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-south-2"
}
