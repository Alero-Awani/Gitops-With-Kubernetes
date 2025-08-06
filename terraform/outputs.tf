output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       =  "${local.env}-${local.eks_name}"
}

output "configure_kubectl" {
  description = "Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = "aws eks --region ${local.aws_region} update-kubeconfig --name ${aws_eks_cluster.eks.cluster_id}"
}

