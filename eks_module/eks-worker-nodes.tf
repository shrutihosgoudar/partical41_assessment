module "eks_cluster" {
  workers_additional_security_group_ids = module.eks_cluster.cluster_security_group_ids
  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 2
      min_capacity     = 2
      instance_type    = "t3a.large"
      key_name          = "your-key-pair-name"
      subnet_ids        = var.private_subnets
    }
  }
}
