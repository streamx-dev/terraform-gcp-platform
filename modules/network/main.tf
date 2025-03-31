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
  default_gcp_project_region          = "europe-central2"
  default_google_compute_address_name = "streamx_ip_address"

  gcp_project_region          = var.force_defaults_for_null_variables && var.gcp_project_region == null ? local.default_gcp_project_region : var.gcp_project_region
  google_compute_address_name = var.force_defaults_for_null_variables && var.google_compute_address_name == null ? local.default_google_compute_address_name : var.google_compute_address_name
}

resource "google_compute_address" "ip_address" {
  project = var.gcp_project_id
  name    = local.google_compute_address_name
  region  = local.gcp_project_region
}
