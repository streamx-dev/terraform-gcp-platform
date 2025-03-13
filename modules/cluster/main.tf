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

locals {
  deafult_node_pools = {
    "streamx" = {
      machine_type       = "e2-standard-4"
      initial_node_count = 4
      max_nodes          = 20
      min_nodes          = 3
      disk_size_gb       = 200
      disk_type          = "pd-ssd"
      labels             = {}
      taints             = []
    }
  }

  node_pools = var.force_defaults_for_null_variables && var.node_pools == null ? local.deafult_node_pools : var.node_pools
}

resource "google_container_cluster" "cluster" {
  name                = var.cluster.name
  description         = var.cluster.description
  project             = var.gcp_project_id
  location            = var.cluster.location
  network             = var.cluster.network
  subnetwork          = var.cluster.subnetwork
  deletion_protection = var.cluster.deletion_protection

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "node_pool" {
  for_each           = local.node_pools
  name               = each.key
  project            = var.gcp_project_id
  cluster            = google_container_cluster.cluster.id
  initial_node_count = each.value.initial_node_count

  autoscaling {
    min_node_count = each.value.min_nodes
    max_node_count = each.value.max_nodes
  }

  node_config {

    oauth_scopes = [
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/devstorage.read_only"
    ]

    disk_size_gb = each.value.disk_size_gb
    disk_type    = each.value.disk_type
    machine_type = each.value.machine_type
    labels       = each.value.labels
    dynamic "taint" {
      for_each = each.value.taints
      content {
        key    = taint.value.key
        value  = taint.value.value
        effect = taint.value.effect
      }
    }
  }
}