output "eks_cluster_endpoint" {
  value = module.eks_cluster.cluster_endpoint
}

output "eks_cluster_name" {
  value = module.eks_cluster.cluster_name
}
