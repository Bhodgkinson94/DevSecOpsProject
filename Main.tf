provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "DevSecOps_Bucket" {
  bucket ="DevSecOps_Bucket"
}
  terraform {
  backend "s3" {
    #Julytesting24
    bucket         = "DevSecOps_Bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
} 