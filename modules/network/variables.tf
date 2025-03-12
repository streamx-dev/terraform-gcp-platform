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
  description = "This string variable represents the unique ID of your Google Cloud Platform (GCP) project. GCP uses this ID to identify your project in its system."
  type        = string
}

variable "network_name" {
  default = "streamx-network"
  description = "This string variable defines the name that will be used for the VPC network that Terraform will create. The name must adhere to RFC1035 and be 1 to 63 characters long."
  type = string
}

variable "subnet_name" {
  default = "streamx-subnet"
  description = "This string variable defines the name that will be used for the subnet created by Terraform within the specified VPC network."
  type = string
}


variable "cloud_region" {
  default     = "europe-central2"
  description = "This string variable indicates the GCP region where your network resources will be located. The default value we have set is 'europe-central2'."
  type = string
}

variable "ip_cidr_range" {
  default = "10.2.0.0/16"
  description = "This string variable sets the IP range (CIDR notation) for the subnet. The default value is '10.2.0.0/16'"
  type = string
}

variable "google_compute_address_name" {
  default = "streamx_ip_address"
  description = "Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long"
  type = string
}
