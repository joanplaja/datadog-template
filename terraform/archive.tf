resource "datadog_logs_archive" "my_s3_archive" {
  name  = "Archieve logs to sa3"
  query = "host:local service:app"
  s3_archive {
    bucket     = var.s3_bucket_name
    path       = "app"
    account_id = var.aws_account
    role_name  = "DatadogAWSIntegrationRole"
  }
}
