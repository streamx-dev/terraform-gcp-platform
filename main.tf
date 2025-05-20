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
  default_cluster_name                         = "streamx"
  default_cluster_deletion_protection          = true
  default_node_pool_name                       = "streamx"
  default_gcp_region                           = "europe-west1"
  default_node_pool_disk_size                  = 200
  default_node_pool_autoscaling_min_node_count = 1
  default_node_pool_autoscaling_max_node_count = 10
  default_node_pool_machine_type               = "e2-standard-4"

  cluster_name                         = var.force_defaults_for_null_variables && var.cluster_name == null ? local.default_cluster_name : var.cluster_name
  cluster_deletion_protection          = var.force_defaults_for_null_variables && var.cluster_deletion_protection == null ? local.default_cluster_deletion_protection : var.cluster_deletion_protection
  node_pool_name                       = var.force_defaults_for_null_variables && var.node_pool_name == null ? local.default_node_pool_name : var.node_pool_name
  gcp_region                           = var.force_defaults_for_null_variables && var.gcp_region == null ? local.default_gcp_region : var.gcp_region
  node_pool_disk_size                  = var.force_defaults_for_null_variables && var.node_pool_disk_size == null ? local.default_node_pool_disk_size : var.node_pool_disk_size
  node_pool_autoscaling_min_node_count = var.force_defaults_for_null_variables && var.node_pool_autoscaling_min_node_count == null ? local.default_node_pool_autoscaling_min_node_count : var.node_pool_autoscaling_min_node_count
  node_pool_autoscaling_max_node_count = var.force_defaults_for_null_variables && var.node_pool_autoscaling_max_node_count == null ? local.default_node_pool_autoscaling_max_node_count : var.node_pool_autoscaling_max_node_count
  node_pool_machine_type               = var.force_defaults_for_null_variables && var.node_pool_machine_type == null ? local.default_node_pool_machine_type : var.node_pool_machine_type
}

module "cluster" {
  source = "./modules/cluster"

  gcp_project_id                       = var.gcp_project_id
  cluster_name                         = local.cluster_name
  cluster_description                  = var.cluster_description
  cluster_deletion_protection          = local.cluster_deletion_protection
  node_pool_name                       = local.node_pool_name
  gcp_region                           = local.gcp_region
  node_pool_disk_size                  = local.node_pool_disk_size
  node_pool_autoscaling_min_node_count = local.node_pool_autoscaling_min_node_count
  node_pool_autoscaling_max_node_count = local.node_pool_autoscaling_max_node_count
  node_pool_machine_type               = local.node_pool_machine_type
  kubeconfig_path                      = var.kubeconfig_path
}
