provider "aws" {
  region = "eu-west-2" # London region

  }
  
  terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "devsecopsprojectbucket1"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}