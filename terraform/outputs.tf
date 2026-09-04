# Global Outputs
# WorkForce365.ai Infrastructure

output "environment" {
  description = "Current environment"
  value       = var.environment
}

output "region" {
  description = "UpCloud region"
  value       = var.region
}

output "common_tags" {
  description = "Common tags applied to all resources"
  value       = var.common_tags
}
