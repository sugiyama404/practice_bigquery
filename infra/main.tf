terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

#gcp project services
module "gcp_project_services" {
  source     = "./modules/gcp_project_services"
  project_id = var.project_id
  region     = var.region
}

module "cloud_sql" {
  source      = "./modules/cloudsql"
  project_id  = var.project_id
  region      = var.region
  db_user     = var.db_user
  db_password = var.db_password
  db_name     = var.db_name
}

module "bigquery" {
  source = "./modules/bigquery"
}
