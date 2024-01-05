provider "aws" {
  region = "us-west-2"
}

module "my_eks_cluster" {
  source          = "./eks-module"
  region          = "us-west-2"
  cluster_name    = "my-eks-cluster"
  vpc_id          = "vpc-abc123def456"
  private_subnets = ["subnet-xyz789", "subnet-uvw456"]
}
