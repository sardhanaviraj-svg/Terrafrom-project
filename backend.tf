terraform {
  backend "s3" {
    bucket         = "nitin-terraform-tfstate-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}
