variable gcp_project_id {
  default = "sonic-airfoil-452813-g1"
  description = "ID of project on GCP where the cluster is created"
  type        = string
}

variable "gcp_cluster_name" {
  default     = "streamx"
  description = "The name of the kubernetes cluster."
  type        = string
}

variable "gcp_cluster_location" {
  default     = "europe-central2-a"
  description = "A valid GCP location (region or zone) in which the kubernetes cluster will be available."
  type        = string
}

variable "vpc_network_link" {
  default ="https://www.googleapis.com/compute/v1/projects/sonic-airfoil-452813-g1/global/networks/streamx-network"
  type = string
}

variable "subnet_link" {
  default = "https://www.googleapis.com/compute/v1/projects/sonic-airfoil-452813-g1/regions/europe-central2/subnetworks/streamx-subnet"
  type = string
}

