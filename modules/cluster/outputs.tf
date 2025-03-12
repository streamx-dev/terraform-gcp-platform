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
output "endpoint" {
  description = "The IP address of this cluster's Kubernetes master."
  value       = google_container_cluster.cluster.endpoint
}

output "client_certificate" {
  description = "Base64 encoded public certificate used by clients to authenticate to the cluster endpoint."
  value       = google_container_cluster.cluster.master_auth.0.client_certificate
  sensitive   = true
}

output "client_key" {
  description = "Base64 encoded private key used by clients to authenticate to the cluster endpoint."
  value       = google_container_cluster.cluster.master_auth.0.client_key
  sensitive   = true
}

output "cluster_ca_certificate" {
  description = " Base64 encoded public certificate that is the root certificate of the cluster."
  value       = google_container_cluster.cluster.master_auth.0.cluster_ca_certificate
  sensitive   = true
}
