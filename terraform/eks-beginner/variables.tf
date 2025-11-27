variables.tf############################################
# variables.tf
# Input variables for AWS EKS setup
############################################

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-southeast-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "beginner-eks"
}

variable "node_instance_type" {
  description = "EC2 instance type for EKS nodes"
  type        = string
  default     = "t3.small"
}

variable "desired_capacity" {
  description = "Number of nodes in the EKS node group"
  type        = number
  default     = 2
}

variable "tags" {
  description = "Tags applied to all AWS resources"
  type        = map(string)
  default = {
    "project" = "eks-beginner"
    "env"     = "dev"
    "owner"   = "bituranjankumar"
  }
}
