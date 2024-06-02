variable "aws_account" {
  description = "AWS account number"
  type        = number
}

variable "aws_external_id" {
  description = "AWS external id"
  type        = number
}

variable "s3_bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "slack_account_name" {
  description = "Slack account name"
  type        = string
}

variable "slack_channel_name" {
  description = "Slack channel name"
  type        = string
}

variable "datadog_api_key" {
  description = "DataDog API key"
  type        = string
}

variable "datadog_app_key" {
  description = "DataDog APP key"
  type        = string
}
