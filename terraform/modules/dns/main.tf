# DNS Module
# Manages DNS records for UpCloud

variable "environment" {
  type = string
}

variable "server_ip" {
  type = string
}

# Placeholder outputs - to be filled with actual UpCloud resources
output "dns_zone" {
  description = "DNS zone"
  value       = "placeholder"
}

output "dns_records" {
  description = "DNS records"
  value       = []
}
