########################################################################################
#     Network
########################################################################################
resource "google_compute_network" "vpc_network" {
  project             = var.gcp_project_id
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  project             = var.gcp_project_id
  name          = var.subnet_name
  ip_cidr_range = var.ip_cidr_range
  region        = var.cloud_region
  network       = google_compute_network.vpc_network.self_link
}

########################################################################################
#     Allocate Global IP
########################################################################################
resource "google_compute_address" "global_ip" {
  project             = var.gcp_project_id
  name = "global-ip"
  region = var.cloud_region
}

