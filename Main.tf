provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "julytesting24" {
  bucket ="julytesting24"
}
  terraform {
  backend "s3" {
    #Julytesting24
    bucket         = "julytesting24"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}

resource "aws_instance" "julytesting24" {

  ami    = "ami-0cbf43fd299e3a464" 
  instance_type = "t2.micro"
  tags = {
    Name = "julytesting24"
   
}
}