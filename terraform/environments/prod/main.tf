# Production Environment
# WorkForce365.ai - UpCloud Infrastructure

terraform {
  backend "pg" {}
}

module "networking" {
  source = "../../modules/networking"

  environment = "prod"
  region      = var.region
}

module "compute" {
  source = "../../modules/compute"

  environment   = "prod"
  region        = var.region
  server_plan   = var.server_plan
  network_id    = module.networking.network_id
}

module "dns" {
  source = "../../modules/dns"

  environment = "prod"
  server_ip   = module.compute.server_public_ip
}

module "database" {
  source = "../../modules/database"

  environment = "prod"
  server_id   = module.compute.server_id
}
