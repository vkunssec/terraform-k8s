resource "kubernetes_service" "hello-world" {
  metadata {
    name = "hello-world"
    namespace = "default"
  }
  spec {
    selector = {
      app = "hello-world"
    }
    port {
      port        = 80
      target_port = 80
      node_port   = 30001
    }
    type = "NodePort"
  }
}
