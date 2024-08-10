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
  region  = "ap-south-1"
}

resource "aws_s3_bucket" "tmc-app-bucket" {
  bucket = "tmc-app-bucket-27-07-2024"
}

resource "aws_s3_bucket" "tmc-app-bucket-4" {
  bucket = "tmc-app-bucket-4-27-07-2024"
}

resource "aws_s3_bucket" "tmc-app-bucket-5" {
  bucket = "tmc-app-bucket-5-27-07-2024"
}

resource "aws_s3_bucket" "tmc-app-bucket-6" {
  bucket = "tmc-app-bucket-6-27-07-2024"
}