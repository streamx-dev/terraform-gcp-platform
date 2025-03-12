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

variable gcp_project_id {
  description = "ID of project on GCP where the cluster is created"
  type        = string
}

variable "network_name" {
  default = "streamx-network"
  description = ""
  type = string
}
variable "subnet_name" {
  default = "streamx-subnet"
  description = ""
  type = string
}


variable "cloud_region" {
  default     = "europe-central2"
  description = ""
  type = string
}

variable "ip_cidr_range" {
  default = "10.2.0.0/16"
  description = ""
  type = string
}


