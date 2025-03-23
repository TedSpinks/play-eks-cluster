variable "cluster_name" {
  description = "EKS cluster endpoint"
  type        = string
}

variable "cluster_endpoint" {
  description = "EKS cluster endpoint"
  type        = string
}

variable "cluster_ca_cert" {
  description = "Base64 encoded certificate data required to communicate with the EKS cluster"
  type        = string
}
