resource "google_sql_user" "myuser" {
  name     = var.db_user
  password = var.db_password
  instance = google_sql_database_instance.mysql.name
}
