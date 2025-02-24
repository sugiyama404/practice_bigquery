resource "google_project_service" "enabled_services" {
  for_each = toset(var.services)

  project = var.project_id
  service = each.value

  disable_on_destroy = false
}

variable "services" {
  description = "List of GCP services to enable"
  type        = list(string)
  default = [
    "bigquery.googleapis.com",
    "sqladmin.googleapis.com",
    "bigquerydatatransfer.googleapis.com",
    "servicenetworking.googleapis.com",
    "bigqueryconnection.googleapis.com",
  ]
}
