resource "datadog_integration_slack_channel" "alerts_channel" {
  account_name = var.slack_account_name
  channel_name = var.slack_channel_name

  display {
    message  = true
    notified = true
    snapshot = true
    tags     = true
  }
}
