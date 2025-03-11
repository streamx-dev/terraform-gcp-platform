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

variable "gcp_cluster_name" {
  default = "streamx"
  description = "The name of the kubernetes cluster."
  type        = string
}

variable "node_pool_name" {
  default = "streamx"
  description = "The name node_pool for kubernetes cluster."
  type        = string
}

variable "gcp_cluster_location" {
  default     = "europe-central2-a"
  description = "A valid GCP location (region or zone) in which the kubernetes cluster will be available."
  type        = string
}

variable "vpc_network_link" {
  default = null
  description = ""
  type = string
}

variable "subnet_link" {
  default = null
  description = ""
  type = string
}

variable "node_pool_disk_size" {
  default = 200
  description = ""
  type = number
}
