resource "aws_eks_cluster" "example1" {
  name = "example1"

  role_arn = aws_iam_role.cluster.arm
  version = "1.35"

vpc_config {
  subnet_ids = [
    "subnet-05ea2f5637b5f7f8c",
    "subnet-099c5c7842b75d921",
    "subnet-072e4160e181ae39d"
    ]
}

depends_on = [ 


    aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.cluster_AmazonEKSComputePolicy,
    aws_iam_role_policy_attachment.cluster_AmazonEKSBlockStoragePolicy,
    aws_iam_role_policy_attachment.cluster_AmazonEKSLoadBalancingPolicy,
    aws_iam_role_policy_attachment.cluster_AmazonEKSNetworkingPolicy,
 ]
}