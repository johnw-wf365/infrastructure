# Infrastructure

Infrastructure as Code for WorkForce365.ai

## Terraform

Infrastructure is managed via Terraform with state stored in PostgreSQL.

### State Backend

- **Type**: PostgreSQL (pg backend)
- **Connection**: Configured via `TF_BACKEND_CONN_STR` secret

### Self-Hosted Runner

- **Name**: `prod-vm-runner`
- **Location**: Production VM (`paperclip-hermes-1`)
- **Purpose**: Run Terraform with access to local PostgreSQL state

## Setup

1. Runner is registered as a systemd service
2. Terraform code goes in `terraform/` directory
3. CI/CD triggers on push to main affecting `terraform/**`

## Secrets

Required GitHub Secrets:
- `TF_BACKEND_CONN_STR` - PostgreSQL connection string for Terraform state


