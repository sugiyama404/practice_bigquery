output "cloudsql_instance_name" {
  value = "${var.project_id}:${var.region}:${google_sql_database_instance.mysql.name}"
}
