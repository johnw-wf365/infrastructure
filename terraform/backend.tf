# PostgreSQL Backend Configuration
# Uses existing PostgreSQL 17 instance for state storage (zero cost)
# State locking is built-in

# Note: The actual connection string is passed via -backend-config
# or environment variable TF_VAR_backend_conn_str
# Example:
#   terraform init -backend-config="conn_str=postgres://user:pass@host:5432/dbname?sslmode=require"
