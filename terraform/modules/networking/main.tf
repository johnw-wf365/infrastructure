# Networking Module
# Manages UpCloud networking resources

variable "environment" {
  type = string
}

variable "region" {
  type = string
}

# Placeholder outputs - to be filled with actual UpCloud resources
output "network_id" {
  description = "Network ID"
  value       = "placeholder"
}

output "network_name" {
  description = "Network name"
  value       = "placeholder"
}
