

provider "helm" {
  kubernetes {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
    token                  = data.aws_eks_cluster_auth.cluster.token

  }
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token

}

provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAQ5ZFAJFAHK6FGI5E"
  secret_key = "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"
}
