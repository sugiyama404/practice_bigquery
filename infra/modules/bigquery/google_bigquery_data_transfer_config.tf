resource "google_bigquery_data_transfer_config" "cloud_sql_transfer" {
  display_name           = "Cloud SQL to BigQuery Transfer"
  data_source_id         = "cloud_sql"
  destination_dataset_id = google_bigquery_dataset.dataset.dataset_id
  schedule               = "every day 03:00"
  project                = var.project_id
  location               = var.region

  params = {
    cloudSql = jsonencode({
      instanceId   = "${var.cloudsql_instance_name}",
      databaseType = "MYSQL"
    })
    database     = var.db_name
    table        = "sales_data"
    connectionId = google_bigquery_connection.cloudsql_connection.name
  }
}
