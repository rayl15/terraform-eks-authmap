output "kubernetes_provider_host" {
  value = provider.kubernetes.host
}

output "kubernetes_provider_cluster_ca_certificate" {
  value = provider.kubernetes.cluster_ca_certificate
}

output "kubernetes_provider_token" {
  value = provider.kubernetes.token
}
