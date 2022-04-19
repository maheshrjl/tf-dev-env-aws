terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.10.0"
    }

    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }

    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}