terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.0.0"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.11.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "/home/analu/.kube/config"
  config_context = "minikube"
}

provider "helm" {
    kubernetes {
      config_path = "/home/analu/.kube/config"
    }
}