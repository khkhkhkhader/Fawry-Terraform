terraform {
  backend "s3" {
    bucket         = "pre-prod-terraform-state00"
    key            = "terraform.tfstate"
    region         = "us-east-1" 
    dynamodb_table = "pre-prod-terraform-locks"
   
  }
}

