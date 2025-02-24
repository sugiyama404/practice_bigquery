resource "google_sql_database_instance" "mysql" {
  name                = var.db_name
  deletion_protection = false
  region              = var.region
  project             = var.project_id
  database_version    = "MYSQL_8_0"

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        name  = "all"
        value = "0.0.0.0/0"
      }
    }
  }
}
