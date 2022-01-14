resource "google_container_node_pool" "my_node_pool" {
  name       = "my-node-pool"
  location   = "europe-west2"
  cluster    = google_container_cluster.primary_cluster.name
  node_count = 1

  node_config {
    preemptible  = false
    machine_type = "e2-micro"

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.cluster_sa.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}