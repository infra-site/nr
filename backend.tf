terraform {
  backend "s3" {
    bucket  = "tr-test-tfstate-bucket"
    key     = "newrelic/terraform_nr.tfstate"
    region  = "ap-northeast-1"
    encrypt = true
  }
}