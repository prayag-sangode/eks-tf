provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "aws-iac-19159-tf"
    key            = "terraform.tfstate-gha-tf"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true
  }
}

