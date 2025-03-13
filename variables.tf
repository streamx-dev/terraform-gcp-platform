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

variable "cluster" {
  description = "Cluster resource [configuration](https://registry.terraform.io/providers/hashicorp/google/6.24.0/docs/resources/container_cluster#argument-reference)"
  type        = object({
    name                = string
    description         = optional(string)
    location            = string
    network             = optional(string)
    subnetwork          = optional(string)
    deletion_protection = optional(bool)
  })
}
variable "node_pools" {
  default = null
  description = "Node pools [configuration](https://registry.terraform.io/providers/hashicorp/google/6.24.0/docs/resources/container_node_pool#argument-reference). Key is used as node pool name."
  type        = map(object({
    machine_type       = string
    initial_node_count = number
    max_nodes          = number
    min_nodes          = number
    disk_size_gb       = number
    disk_type          = string
    labels             = optional(map(string), {})
    taints             = optional(list(object({
      key    = string
      value  = string
      effect = string
    })), [])
  }))
}