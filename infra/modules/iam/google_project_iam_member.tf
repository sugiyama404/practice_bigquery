# resource "google_project_iam_member" "bigquerry_sa_user" {
#   for_each = toset([
#     "roles/bigquery.admin",
#     "roles/cloudsql.admin",
#     "roles/bigquery.dataEditor",
#     "roles/bigquery.connectionAdmin",
#     "roles/iam.serviceAccountTokenCreator",
#   ])
#   role    = each.key
#   project = var.project_id
#   member  = "serviceAccount:service-${var.project_id}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com"
# }

resource "google_project_iam_member" "sa_user" {
  for_each = toset([
    "roles/bigquery.admin",
    "roles/cloudsql.admin",
    "roles/cloudsql.client",
    "roles/bigquery.dataEditor",
    "roles/bigquery.connectionAdmin",
    "roles/bigquery.connectionUser",
  ])
  role    = each.key
  project = var.project_id
  member  = "serviceAccount:${google_service_account.main.email}"
}
