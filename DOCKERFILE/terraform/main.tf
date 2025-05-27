terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0" # o la versión que estés utilizando
    }
  }
}

provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3  = "http://127.0.0.1:4566"
    sts = "http://127.0.0.1:4566"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket        = "my-terraform-bucket"
  force_destroy = true
}
