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
  default_bucket_name               = "terraform_state_streamx_bucket"
  default_gcp_project_region        = "europe-central2"
  default_bucket_versioning_enabled = true
  default_bucket_storage_class      = "STANDARD"
  default_bucket_force_destroy      = false

  bucket_name               = var.force_defaults_for_null_variables && var.bucket_name == null ? local.default_bucket_name : var.bucket_name
  gcp_project_region        = var.force_defaults_for_null_variables && var.gcp_project_region == null ? local.default_gcp_project_region : var.gcp_project_region
  bucket_versioning_enabled = var.force_defaults_for_null_variables && var.bucket_versioning_enabled == null ? local.default_bucket_versioning_enabled : var.bucket_versioning_enabled
  bucket_storage_class      = var.force_defaults_for_null_variables && var.bucket_storage_class == null ? local.default_bucket_storage_class : var.bucket_storage_class
  bucket_force_destroy      = var.force_defaults_for_null_variables && var.bucket_force_destroy == null ? local.default_bucket_force_destroy : var.bucket_force_destroy
}

########################################################################################
#     Bucket
########################################################################################

resource "google_storage_bucket" "bucket" {
  name          = local.bucket_name
  force_destroy = local.bucket_force_destroy
  location      = local.gcp_project_region
  storage_class = local.bucket_storage_class
  project       = var.gcp_project_id
  versioning {
    enabled = local.bucket_versioning_enabled
  }
}
