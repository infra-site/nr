resource "newrelic_notification_destination" "mail" {
  name       = var.dst.name_dst_mail
  type       = "EMAIL"

  property {
    key   = "email"
    value = var.dst.mail_address
  }
}

resource "newrelic_notification_channel" "mail" {
  name           = var.dst.name_dst_mail
  type           = "EMAIL"
  destination_id = newrelic_notification_destination.mail.id
  product        = "IINT"

  property {
    key   = "subject"
    value = "{{ issueTitle }}"
  }
}

# PagerDuty
resource "newrelic_notification_destination" "pd" {
  name       = var.pd_test.pd_name
  type       = "PAGERDUTY_SERVICE_INTEGRATION"

  property {
    key   = ""
    value = ""
  }

  auth_token {
    prefix = "Token token="
    #token  = var.pd_test.pd_integration_key
    token = data.terraform_remote_state.tfstate.outputs.service_integration_key
  }
}

resource "newrelic_notification_channel" "pd" {
  name           = var.pd_test.pd_name
  type           = "PAGERDUTY_SERVICE_INTEGRATION"
  destination_id = newrelic_notification_destination.pd.id
  product        = "IINT"

  property {
    key   = "summary"
    value = var.pd_test.pd_summary
  }
}
