terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.4.0"
    }
  }
}

# -----------------------------
# Provider setting
# -----------------------------
# New Relic
## 環境変数から取得する
#variable "NEW_RELIC_ACCOUNT_ID" {}
#variable "NEW_RELIC_API_KEY" {}
#variable "NEW_RELIC_REGION" {}
#variable "NEW_RELIC_API_SKIP_VERIFY" {}

#provider "newrelic" {
#  account_id           = var.NEW_RELIC_ACCOUNT_ID
#  api_key              = var.NEW_RELIC_API_KEY
#  region               = var.NEW_RELIC_REGION
#  insecure_skip_verify = var.NEW_RELIC_API_SKIP_VERIFY
#}

# Configure the New Relic provider
provider "newrelic" {
  account_id = var.NEW_RELIC_ACCOUNT_ID
  api_key    = var.NEW_RELIC_API_KEY
  region     = var.newrelic_account_region
}

provider "aws" {
  region = "ap-northeast-1"
}


