variable gcp_project_id {
  description = "ID of project on GCP where the cluster is created"
  type        = string
}

variable "gcp_cluster_name" {
  description = "The name of the kubernetes cluster."
  type        = string
}

variable "gcp_cluster_location" {
  default     = "europe-central2-a"
  description = "A valid GCP location (region or zone) in which the kubernetes cluster will be available."
  type        = string
}

variable "vpc_network_link" {
  description = ""
  type = string
}

variable "subnet_link" {
  description = ""
  type = string
}

