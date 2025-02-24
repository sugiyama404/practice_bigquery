resource "google_bigquery_table" "table_tf" {
  table_id   = "sales_data"
  dataset_id = google_bigquery_dataset.dataset.dataset_id

  deletion_protection = false

  schema = jsonencode([
    {
      "name" : "id",
      "type" : "INTEGER",
      "mode" : "REQUIRED",
      "description" : "Primary key, auto-increment"
    },
    {
      "name" : "product_name",
      "type" : "STRING",
      "mode" : "NULLABLE",
      "description" : "Name of the product"
    },
    {
      "name" : "quantity",
      "type" : "INTEGER",
      "mode" : "NULLABLE",
      "description" : "Quantity sold"
    },
    {
      "name" : "price",
      "type" : "NUMERIC",
      "mode" : "NULLABLE",
      "description" : "Price of the product"
    },
    {
      "name" : "sales_date",
      "type" : "DATE",
      "mode" : "NULLABLE",
      "description" : "Date of sale"
    }
  ])
}
