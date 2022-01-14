resource "google_service_account" "instance_sa" {
  account_id   = "instance-service-account-id"
  display_name = "Service Account-instance"
}

resource "google_project_iam_binding" "project2" {
  project = "alber-project"
  role    = "roles/container.admin"

  members = [
    "serviceAccount:${google_service_account.instance_sa.email}"
  ]
}