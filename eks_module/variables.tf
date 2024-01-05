variable "region" {
  description = "us-west-1"
}

variable "cluster_name" {
  description = "test_EKS_Cluster"
}

variable "vpc_id" {
  description = "VPC-123345"
}

variable "private_subnets" {
  type        = list(string)
  description = "subnet1","subnet2"
}
