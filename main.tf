terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx-stroud-wado-ryu" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx-stroud-wado-ryu.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}