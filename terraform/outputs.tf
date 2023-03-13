resource "null_resource" "kubeconfig" {
  depends_on = [scaleway_k8s_pool.k8s_pool]
  triggers = {
    kubeconfig = scaleway_k8s_cluster.k8s_cluster.kubeconfig[0].config_file
  }
}

output "kubeconfig" {
  value     = null_resource.kubeconfig.triggers.kubeconfig
  sensitive = true
}

resource "local_file" "kubeconfig" {
  content  = null_resource.kubeconfig.triggers.kubeconfig
  filename = "kube.config"
}
