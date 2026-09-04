# Terraform Configuration
# Infrastructure as Code for WorkForce365.ai
# Cloud Provider: UpCloud
# State Backend: PostgreSQL (self-hosted, zero cost)

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    upcloud = {
      source  = "UpCloudLtd/upcloud"
      version = "~> 5.0"
    }
  }

  # PostgreSQL backend for state storage (zero cost, reuses existing DB)
  backend "pg" {
    conn_str = var.backend_conn_str
  }
}

# UpCloud Provider Configuration
provider "upcloud" {
  # Credentials should be provided via environment variables:
  #   UPCLOUD_USERNAME
  #   UPCLOUD_PASSWORD
  username = var.upcloud_username
  password = var.upcloud_password
}
