variable "eks_cluster_name" {
  description = "The name of the EKS cluster"
}

variable "auth_map_group" {
  description = "The IAM group for authentication mapping"
}

variable "aws_iam_role_arn" {
  description = "The ARN of the IAM role"
}

variable "aws_iam_role_name" {
  description = "The name of the IAM role"
}
