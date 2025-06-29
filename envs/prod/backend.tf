terraform {
  backend "s3" {
    bucket         = "prod-terraform-state99"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "prod-terraform-locks"
  }
}
