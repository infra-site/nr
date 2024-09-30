data "terraform_remote_state" "tfstate" {
  backend = "s3"
  config = {
    bucket               = "tr-test-tfstate-bucket"
    key                  = "pagerduty/terraform_pd.tfstate"
    region               = "ap-northeast-1"
  }
}