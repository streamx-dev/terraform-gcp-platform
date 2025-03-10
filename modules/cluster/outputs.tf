output "host" {
  description = "Kubernetes API server endpoint"
  value       = google_container_cluster.cluster.endpoint
}

output "client_certificate" {
  description = ""
  value       = google_container_cluster.cluster.master_auth.0.client_certificate
  sensitive   = true
}

output "client_key" {
  description = ""
  value       = google_container_cluster.cluster.master_auth.0.client_key
  sensitive   = true
}

output "cluster_ca_certificate" {
  description = "Base64 encoded CA cert used by client to verify server certificate"
  value       = google_container_cluster.cluster.master_auth.0.cluster_ca_certificate
  sensitive   = true
}
