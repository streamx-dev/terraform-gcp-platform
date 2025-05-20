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

variable "force_defaults_for_null_variables" {
  default     = true
  description = "Enables forcing default variable values when the variable value passed to the module is null."
  type        = bool
}

variable "gcp_project_id" {
  description = "This string variable represents the unique ID of your Google Cloud Platform (GCP) project. GCP uses this ID to identify your project in its system."
  type        = string
}

variable "gcp_region" {
  default     = "europe-central2"
  description = "This string variable indicates the GCP region where your network resources will be located. The default value we have set is 'europe-central2'."
  type        = string
}

variable "google_compute_address_name" {
  default     = "streamx-ip-address"
  description = "Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long"
  type        = string
}
