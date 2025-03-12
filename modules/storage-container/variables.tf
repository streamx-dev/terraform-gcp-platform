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

variable "bucket_name" {
  default = "terraform_state_streamx_bucket"
  type = string
}

variable "region" {
  default = "EUROPE-CENTRAL2"
  type = string
}

variable gcp_project_id {
  description = "ID of project on GCP where the cluster is created"
  type        = string
}

variable "bucket_versioning_enabled" {
  default = true
  type = bool
}

variable "bucket_storage_class" {
  description = "(Optional, Default: 'STANDARD') The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE."
  default = "STANDARD"
  type = bool
}