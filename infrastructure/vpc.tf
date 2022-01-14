# vpc resource
resource "google_compute_network" "my_vpc" {
  project                 = "alber-project"
  name                    = "myvpc"
  auto_create_subnetworks = false
}