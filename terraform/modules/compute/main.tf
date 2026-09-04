# Compute Module
# Manages UpCloud server instances

variable "environment" {
  type = string
}

variable "region" {
  type = string
}

variable "server_plan" {
  type = string
}

variable "network_id" {
  type = string
}

# Placeholder outputs - to be filled with actual UpCloud resources
output "server_id" {
  description = "Server instance ID"
  value       = "placeholder"
}

output "server_public_ip" {
  description = "Server public IP"
  value       = "placeholder"
}

output "server_private_ip" {
  description = "Server private IP"
  value       = "placeholder"
}
