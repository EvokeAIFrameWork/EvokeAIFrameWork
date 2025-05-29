output "aks_cluster_name" {
  value       = length(azurerm_kubernetes_cluster.aks) > 0 ? azurerm_kubernetes_cluster.aks[0].name : null
  description = "Name of the AKS cluster"
}
