# Copyright 2025 Dynamic Solutions Sp. z o.o. sp.k.

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

resource "google_container_cluster" "cluster" {
  name                = var.gcp_cluster_name
  project             = var.gcp_project_id
  location            = var.gcp_cluster_location
  network             = var.vpc_network_link
  subnetwork          = var.subnet_link
  deletion_protection = false

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "node_pool" {
  name               = var.node_pool_name
  project            = var.gcp_project_id
  cluster            = google_container_cluster.cluster.id
  initial_node_count = 1

  autoscaling {
    min_node_count = 1
    max_node_count = 10
  }

  node_config {

    oauth_scopes = [
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/monitoring.write",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/devstorage.read_only"
    ]

    disk_size_gb = var.node_pool_disk_size
    disk_type    = "pd-ssd"
    machine_type = "e2-standard-4"
  }
}
