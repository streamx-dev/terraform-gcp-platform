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

module "cluster" {
  source = "./modules/cluster"

  gcp_project_id = var.gcp_project_id
  gcp_cluster_name = var.gcp_cluster_name
  gcp_cluster_location = var.gcp_cluster_location
  vpc_network_link = var.vpc_network_link
  subnet_link = var.subnet_link
  node_pool_name = var.node_pool_name
  node_pool_disk_size = var.node_pool_disk_size
}
