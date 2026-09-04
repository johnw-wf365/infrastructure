# Database Module
# Manages PostgreSQL database provisioning

variable "environment" {
  type = string
}

variable "server_id" {
  type = string
}

# Placeholder outputs - to be filled with actual UpCloud resources
output "database_host" {
  description = "Database host"
  value       = "placeholder"
}

output "database_port" {
  description = "Database port"
  value       = 5432
}

output "database_name" {
  description = "Database name"
  value       = "placeholder"
}
