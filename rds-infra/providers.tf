terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
#   backend "s3" {
#     bucket         = "meu-bucket-terraform-state"
#     key            = "rds/terraform.tfstate"
#     region         = "us-east-1"
#     encrypt        = true
#     dynamodb_table = "terraform-lock"
#   }
 }

provider "aws" {
  region = var.aws_region
}
