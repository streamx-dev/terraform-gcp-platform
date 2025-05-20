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
  description = "ID of project on GCP where the cluster is created"
  type        = string
}

variable "gcp_region" {
  default     = "europe-west1"
  description = "A valid GCP location (region or zone) in which the kubernetes cluster will be available."
  type        = string
}

variable "cluster_name" {
  default     = "streamx"
  description = "The name of the kubernetes cluster."
  type        = string
}

variable "cluster_description" {
  default     = null
  description = "The description of the kubernetes cluster."
  type        = string
}

variable "cluster_deletion_protection" {
  default     = true
  description = "Whether Terraform will be prevented from destroying the cluster. Deleting this cluster via terraform destroy or terraform apply will only succeed if this field is false in the Terraform state."
  type        = bool
}

variable "node_pool_name" {
  default     = "streamx"
  description = "The name node_pool for kubernetes cluster."
  type        = string
}

variable "node_pool_disk_size" {
  default     = 200
  description = "(Optional) Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB"
  type        = number
}

variable "node_pool_autoscaling_min_node_count" {
  default     = 1
  description = "(Optional) Minimum number of nodes in the NodePool. Must be >=0 and <= node_pool_autoscaling_min_node_count. Default value 1."
  type        = number
}

variable "node_pool_autoscaling_max_node_count" {
  default     = 10
  description = "(Optional) Maximum number of nodes in the NodePool. Must be >= min_node_count. Default value 10."
  type        = number
}

variable "node_pool_machine_type" {
  default     = "e2-standard-4"
  description = "(Optional) The name of a Google Compute Engine machine type. The list of predefined machine types is available using the following command: gcloud compute machine-types list"
  type        = string
}

variable "kubeconfig_path" {
  default     = null
  description = "Script creates kubeconfig file with provided path. No file is created when null is provided."
}
