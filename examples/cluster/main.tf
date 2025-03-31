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
  source = "./../../modules/cluster"

  gcp_project_id       = var.gcp_project_id
  gcp_cluster_name     = var.gcp_cluster_name
  gcp_cluster_location = var.gcp_cluster_location
  node_pool_disk_size  = 50
}

locals {
  kubeconfig = <<EOT
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${module.cluster.cluster_ca_certificate}
    server: https://${module.cluster.endpoint}
  name: ${var.gcp_cluster_name}
contexts:
- context:
    cluster: ${var.gcp_cluster_name}
    user: ${var.gcp_cluster_name}
  name: ${var.gcp_cluster_name}
current-context: ${var.gcp_cluster_name}
kind: Config
preferences: {}
users:
- name: ${var.gcp_cluster_name}
  user:
    auth-provider:
      config:
        cmd-args: config config-helper --format=json
        cmd-path: gcloud
        expiry-key: '{.credential.token_expiry}'
        token-key: '{.credential.access_token}'
      name: gcp
EOT
}

resource "local_sensitive_file" "kubeconfig" {
  filename = "${path.module}/env/kubeconfig"
  content  = local.kubeconfig
}
