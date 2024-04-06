<!-- BEGIN_TF_DOCS -->
## Terraform EKS Auth-Map

This Terraform module updates the `aws-auth` ConfigMap for authentication role mapping.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_config_map_v1_data.aws_auth](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map_v1_data) | resource |
| [aws_eks_cluster.eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |
| [kubernetes_config_map.aws_auth](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/config_map) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_extra_aws_accounts"></a> [add\_extra\_aws\_accounts](#input\_add\_extra\_aws\_accounts) | n/a | `list(string)` | `[]` | no |
| <a name="input_add_extra_iam_roles"></a> [add\_extra\_iam\_roles](#input\_add\_extra\_iam\_roles) | n/a | <pre>list(object({<br>    groups    = list(string)<br>    role_arn  = string<br>    user_name = string<br>  }))</pre> | `[]` | no |
| <a name="input_add_extra_iam_users"></a> [add\_extra\_iam\_users](#input\_add\_extra\_iam\_users) | n/a | <pre>list(object({<br>    groups    = list(string)<br>    user_arn  = string<br>    user_name = string<br>  }))</pre> | `[]` | no |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | The name of the EKS cluster | `string` | `""` | no |

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

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | n/a |
<!-- END_TF_DOCS -->