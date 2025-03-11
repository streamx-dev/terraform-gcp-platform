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

