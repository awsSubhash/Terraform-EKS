module "eks_node_group" {
  source = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"

  cluster_name = module.eks.cluster_name

  node_group_name = "demo-node-group"

  subnet_ids = module.vpc.private_subnets

  instance_types = [var.node_instance_type]

  scaling_config = {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}
