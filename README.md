# Logging to datadog with fluentbit and datadog agent

## Overview

The application is python application that sends random logs to stdout and sderr. The logs are captured by fluentbit and sent to datadog agent, which sends them to datadog.

## Setup

### Preqrequisites

- A Datadog account is required and it must be non free trial, as API doesn't without paying. However I do not have a paid account I writed terraform files to setup all datadog configurations. Terraform datadog files are not tested, but they should work. ( Archieve  and alerts )
- AWS Account and permissions properly configured to execute it with terraform. ( S3, Datadog IAM role)

### Steps

Replace fluentbit DATADOG_API_KEY with your datadog api key in docker-compose.yml
```bash
 fluent-bit:
    container_name: fluent-bit
    image: grafana/fluent-bit-plugin-loki:latest
    environment:
      - DATADOG_API_KEY=CHANGE_ME
```

Provision Datadog and AWS Resources, variables are need, you can use environment variables, or whatever you want that terraform support, check terraform/variables.tf:
```bash
cd terraform
terraform init
terraform plan
terraform apply
```


## Resources

- https://github.com/DataDog/docker-compose-example/blob/master/docker-compose.yml
- https://github.com/fluent/fluent-bit/issues/7218
