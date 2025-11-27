############################################
# outputs.tf
# Display useful information after apply
############################################

output "cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.eks_cluster.name
}

output "cluster_endpoint" {
  description = "EKS cluster API endpoint"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "node_group_name" {
  description = "EKS node group name"
  value       = aws_eks_node_group.node_group.node_group_name
}
