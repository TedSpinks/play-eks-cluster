provider "helm" {
  debug = true
  kubernetes {
    host                   = var.cluster_endpoint
    cluster_ca_certificate = base64decode(var.cluster_ca_cert)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", var.cluster_name]
      command     = "aws"
    }
  }
}

resource "helm_release" "hello_world_app" {
  name       = "hello-world-app"
  chart      = "hello-world-app"
  repository = "https://charts.softonic.io"
  namespace  = "default"
  values = [<<EOF
service:
  type: LoadBalancer
  annotations:
    service.beta.kubernetes.io/aws-load-balancer-internal: "false"
EOF
  ]
}
