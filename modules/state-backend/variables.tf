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

variable "bucket_name" {
  description = "(Optional, default: 'streamx_bucket') The name of the bucket."
  default = "streamx_bucket"
  type = string
}

variable "region" {
  description = "(Optional, default: 'EUROPE-CENTRAL2') The GCS location https://cloud.google.com/storage/docs/locations"
  default = "EUROPE-CENTRAL2"
  type = string
}

variable gcp_project_id {
  description = "This string variable represents the unique ID of your Google Cloud Platform (GCP) project. GCP uses this ID to identify your project in its system."
  type        = string
}

variable "tf_backends" {
  description = "Terraform backends defined as map where key is state backend prefix and value is a path where backend configuration is created."
  type        = map(string)
}

variable "bucket_storage_class" {
  description = "(Optional, Default: 'STANDARD') The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE."
  default = "STANDARD"
  type = string
}
