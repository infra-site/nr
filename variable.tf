variable "NEW_RELIC_ACCOUNT_ID" {
  type = string
}

variable "NEW_RELIC_API_KEY" {
  type = string
}

variable "newrelic_account_region" {
  type    = string
  default = "US"

  validation {
    condition     = contains(["US", "EU"], var.newrelic_account_region)
    error_message = "Valid values for region are 'US' or 'EU'."
  }
}

variable "name" {
  type    = string
  default = "test_dev"
}

# -----------------------------
# Condition Parameter
# -----------------------------
#variable "common" {
#  type = map(string)
#  default = {
#    aws_account_id = ""
#    project_id     = "tr"
#    env            = "dev"
#  }
#}


# -----------------------------
# PagerDuty
# -----------------------------
variable "pd_test" {
  type = map(string)
  default = {
    #PDのdestination名
    pd_name = "TEST_PD"
    #PDのIntegration Key
    #PDのSummary名
    pd_summary = "[TEST] {{ accumulations.conditionName.[0] }} {{ accumulations.conditionDescription.[0] }}"
  }
}

# -----------------------------
# destination
# -----------------------------
variable "dst" {
  default = {
    name_dst_mail = "test-dev-dst-mail"
    mail_address  = "team.member1@email.com"
  }
}