resource "google_compute_router" "my_router" {
  name    = "gcp-router"
  region  = google_compute_subnetwork.management_subnet.region
  network = google_compute_network.my_vpc.id

  bgp {
    asn = 64514
  }
}