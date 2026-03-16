variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS Cluster name"
  default     = "subhash-eks-cluster"
}

variable "cluster_version" {
  description = "EKS version"
  default     = "1.29"
}
