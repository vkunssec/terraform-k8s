terraform {
    required_version = "~> 1.10.5"
    required_providers {
        kubernetes = {
            source = "hashicorp/kubernetes"
            version = "~> 2.22"
        }
    }
    backend "local" {
        path = "terraform.tfstate"
    }
}

provider "kubernetes" {
    config_context = "minikube"
    config_path = "~/.kube/config"
    host = "https://127.0.0.1:55671"
    insecure = true
    token = "admin-token"
}
