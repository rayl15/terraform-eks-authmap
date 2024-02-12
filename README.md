# terraform-eks-authmap#

This Terraform module provisions an EKS cluster and updates the `aws-auth` ConfigMap for authentication mapping.

## Usage

```hcl
module "eks" {
  source           = "git::https://github.com/rayl15/terraform-eks-authmap.git"
  eks_cluster_name = "my-eks-cluster"
  auth_map_group   = "system:masters"
  aws_iam_role_arn = "arn:aws:iam::123456789012:role/my-role"
  aws_iam_role_name= "my-role"
}
```

### Inputs
eks_cluster_name: The name of the EKS cluster.
auth_map_group: The IAM group for authentication mapping.
aws_iam_role_arn: The ARN of the IAM role.
aws_iam_role_name: The name of the IAM role.

### Outputs
kubernetes_provider_host: The host of the Kubernetes provider.
kubernetes_provider_cluster_ca_certificate: The cluster CA certificate of the Kubernetes provider.
kubernetes_provider_token: The token of the Kubernetes provider.
