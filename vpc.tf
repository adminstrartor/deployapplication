terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.46.0"
    }
  }

  backend "s3" {
    bucket = "video-tf234567"
    key    = "backend"
    region = "us-east-1"
  }
}

provider "aws" {
   region = "us-east-1"
   access_key = "AKIA5MSUBH2VOEBAGVXB"
   secret_key = "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"

}

resource "aws_vpc" "vpc-tf" {
   cidr_block = "10.0.0.0/16"
   tags = {
    "Name" = "VPC-tf"
  }
}
