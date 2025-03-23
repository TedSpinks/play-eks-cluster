module "eks_cluster_example1" {
  cluster_name = "example1"
  source       = "./modules/eks_cluster"
  region       = "us-east-2"
}
