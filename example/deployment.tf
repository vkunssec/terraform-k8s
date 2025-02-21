resource "kubernetes_deployment" "hello-world" {
  metadata {
    name = "hello-world"
    namespace = "default"
    labels = {
      app = "hello-world"
    }
  }
  spec {
    replicas = 3
    selector {
      match_labels = {
        app = "hello-world"
      }
    }
    template {
      metadata {
        labels = {
          app = "hello-world"
        }
      }
      spec {
        container {
          image = "karthequian/helloworld:latest"
          name = "hello-world"
          port {
            name = "http"
            protocol = "TCP"
            container_port = 80
          }
        }
      }
    }
  }
}
