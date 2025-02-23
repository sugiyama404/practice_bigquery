resource "google_bigquery_connection" "cloudsql_connection" {
  connection_id = "cloudsql-connection"
  friendly_name = "Cloud SQL Connection"
  description   = "Connection to Cloud SQL for DTS"
  location      = var.region
  project       = var.project_id

  cloud_sql {
    instance_id = var.cloudsql_instance_name
    database    = var.db_name
    type        = "MYSQL"
    credential {
      username = var.db_user
      password = var.db_password
    }
  }
}
