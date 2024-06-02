terraform {
  required_version = "~> 1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"
    }
    datadog = {
      source  = "DataDog/datadog"
      version = "3.39.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

# Configure the Datadog provider
provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
  api_url = "https://api.datadoghq.eu/"
}
