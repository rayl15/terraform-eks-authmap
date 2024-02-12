module "eks" {
  source           = "git::https://github.com/rayl15/terraform-eks-authmap.git"
  eks_cluster_name = "eks-cluster"
  auth_map_group   = "system:masters"
  aws_iam_role_arn = "arn:aws:iam::xxx:role/service-role/SSMAccessRole"
  aws_iam_role_name= "SSMAccessRole"
}