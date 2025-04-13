provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "devsecopsprojectbucket1" {
  bucket = "devsecopsprojectbucket1"
  }
  
  terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "devsecopsprojectbucket1"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}