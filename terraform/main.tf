# Fichier à compléter avec la description du cluster Kubernetes dans Azure
# Doc: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster

##==> Deploy your scaleway kubernetes cluster
##==> The name of your cluster should be: k8s_cluster_<prenom><nom>
##==> The name of your cluster should be: k8s_pool_<prenom><nom>
##==> The node_type of your pool should be DEV1-M and its size should be 1


resource "scaleway_k8s_cluster" "k8s_cluster" {
  name    = "k8s_cluster_monalisasaadi"
  version = "1.24.3"
  cni     = "cilium"
  delete_additional_resources = false
}

resource "scaleway_k8s_pool" "k8s_pool" {
  cluster_id = scaleway_k8s_cluster.k8s_cluster.id
  name       = "k8s_pool_monalisasaadi"
  node_type  = "DEV1-M"
  size       = 1
}