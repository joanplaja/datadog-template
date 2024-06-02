resource "datadog_monitor" "error_monitor" {
  name               = "Error Monitor"
  type               = "log alert"
  query              = "logs(\"host:local service:app status:error\").rollup(\"count\").last(\"5m\") > 0"
  message            = "There are error logs in the last 5 minutes. Notify: @${var.slack_channel_name}"
  escalation_message = "Escalation message for further actions."

  notify_audit      = false
  timeout_h         = 0
  include_tags      = true
  notify_no_data    = false
  renotify_interval = 0

  monitor_thresholds {
    critical = 1
  }

}

