# Terraform Infrastructure as Code

This directory contains the Terraform configuration for managing WorkForce365.ai cloud infrastructure on UpCloud.

## Architecture

- **Provider**: UpCloud
- **State Backend**: PostgreSQL (self-hosted, zero cost)
- **CI/CD**: GitHub Actions (free tier)
- **Cost**: $0 for tooling (infrastructure ~$46.55/month pre-approved)

## Directory Structure

```
infra/terraform/
  backend.tf              # PostgreSQL backend config
  provider.tf             # UpCloud provider config
  variables.tf            # Global variables
  outputs.tf              # Global outputs
  environments/
    prod/                 # Production environment
    staging/              # Future staging
    dev/                  # Future dev
  modules/
    networking/           # VPC, subnets, firewall
    compute/              # UpCloud server instances
    dns/                  # DNS records
    database/             # PostgreSQL provisioning
```

## Prerequisites

1. [Terraform](https://developer.hashicorp.com/terraform/install) >= 1.5.0
2. UpCloud API credentials
3. PostgreSQL database for state backend

## Quick Start

```bash
cd infra/terraform/environments/prod

# Initialize with PostgreSQL backend
terraform init \
  -backend-config="conn_str=postgres://user:pass@host:5432/terraform_state?sslmode=require"

# Validate configuration
terraform validate

# Preview changes
terraform plan

# Apply changes
terraform apply
```

## State Management

State is stored in PostgreSQL for:
- **State locking**: Built-in, prevents concurrent modifications
- **Zero cost**: Reuses existing PostgreSQL instance
- **Security**: State file encrypted at rest

## CI/CD Pipeline

The GitHub Actions workflow (`terraform-ci.yml`) runs:

1. **Validate**: `terraform validate` + `tflint`
2. **Plan**: `terraform plan` (posted to PR)
3. **Security**: `checkov` security scan
4. **Apply**: `terraform apply` (main branch, manual approval via GitHub Environments)

## Required GitHub Secrets

| Secret | Description |
|--------|-------------|
| `UPCLOUD_USERNAME` | UpCloud API username |
| `UPCLOUD_PASSWORD` | UpCloud API password |
| `TF_BACKEND_CONN_STR` | PostgreSQL connection string for state |

## Module Ownership

| Module | Owner |
|--------|-------|
| Repo structure & CI/CD | Sam (DevOps) |
| UpCloud compute/networking/DNS/firewall | Max (Cloud Ops) |
| Server provisioning | Max (Cloud Ops) |
| Monitoring | Max (Cloud Ops) |
| Backup/DR | Max (Cloud Ops) |
| Docker Compose integration | Shared |
| Secrets management | Shared |

## Security

- Least-privilege IAM roles
- Secrets in environment variables (never in state)
- State file encryption at rest
- Automated security scanning in CI/CD
- No hardcoded credentials

## Cost Optimization

- Zero-cost tooling (Terraform open source, PostgreSQL backend, GitHub Actions free tier)
- Right-sized instances
- Scheduled scaling for non-prod environments
- Cost-center tagging on all resources
# test
# test
# test2
# trigger
# trigger
# trigger
