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
  default_gcp_cluster_name                        = "streamx"
  default_node_pool_name                          = "streamx"
  default_gcp_cluster_location                    = "europe-central2-a"
  default_node_pool_disk_size                     = 200
  default_node_pool_autoscaling_min_node_count    = 1
  default_node_pool_autoscaling_max_node_count    = 10
  default_node_pool_machine_type                  = "e2-standard-4"

  gcp_cluster_name = var.force_defaults_for_null_variables && var.gcp_cluster_name == null ? local.default_gcp_cluster_name : var.gcp_cluster_name
  node_pool_name = var.force_defaults_for_null_variables && var.node_pool_name == null ? local.default_node_pool_name : var.node_pool_name
  gcp_cluster_location = var.force_defaults_for_null_variables && var.gcp_cluster_location == null ? local.default_gcp_cluster_location : var.gcp_cluster_location
  node_pool_disk_size = var.force_defaults_for_null_variables && var.node_pool_disk_size == null ? local.default_node_pool_disk_size : var.node_pool_disk_size
  node_pool_autoscaling_min_node_count = var.force_defaults_for_null_variables && var.node_pool_autoscaling_min_node_count == null ? local.default_node_pool_autoscaling_min_node_count : var.node_pool_autoscaling_min_node_count
  node_pool_autoscaling_max_node_count = var.force_defaults_for_null_variables && var.node_pool_autoscaling_max_node_count == null ? local.default_node_pool_autoscaling_max_node_count : var.node_pool_autoscaling_max_node_count
  node_pool_machine_type = var.force_defaults_for_null_variables && var.node_pool_machine_type == null ? local.default_node_pool_machine_type : var.node_pool_machine_type
}

resource "google_container_cluster" "cluster" {
  name                = local.gcp_cluster_name
  project             = var.gcp_project_id
  location            = local.gcp_cluster_location
  deletion_protection = false

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "node_pool" {
  name               = local.node_pool_name
  project            = var.gcp_project_id
  cluster            = google_container_cluster.cluster.id
  initial_node_count = local.node_pool_autoscaling_min_node_count

  autoscaling {
    min_node_count = local.node_pool_autoscaling_min_node_count
    max_node_count = local.node_pool_autoscaling_max_node_count
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

    disk_size_gb = local.node_pool_disk_size
    disk_type    = "pd-ssd"
    machine_type = local.node_pool_machine_type
  }
}
