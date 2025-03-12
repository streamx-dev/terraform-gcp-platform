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
  description = "(Optional) Self_link of the Google Compute Engine network to which the cluster is connected."
  type = string
}

variable "subnet_link" {
  default = null
  description = "(Optional) The name or self_link of the Google Compute Engine subnetwork in which the cluster's instances are launched."
  type = string
}

variable "node_pool_disk_size" {
  default = 200
  description = "(Optional, default 200) Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB"
  type = number
}

variable "node_pool_autoscaling_min_node_count" {
  default = 1
  description = "(Optional, default 1) Minimum number of nodes in the NodePool. Must be >=0 and <= node_pool_autoscaling_min_node_count. Default value 1."
  type = number
}

variable "node_pool_autoscaling_max_node_count" {
  default = 10
  description = "(Optional, default 10) Maximum number of nodes in the NodePool. Must be >= min_node_count. Default value 10."
  type = number
}
