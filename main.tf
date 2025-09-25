terraform {
  required_version = ">= 1.0.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "tcp://localhost:2375/"
}

resource "docker_image" "nginx" {
  name = "nginx:alpine"
}

resource "docker_container" "nginx" {
  name  = "terraform-nginx"
  image = docker_image.nginx.image_id

  ports {
  internal = 80
  external = 8081   # changed from 8080 → 8081
}


  restart = "no"
}

output "nginx_container_id" {
  value = docker_container.nginx.id
}

output "nginx_container_name" {
  value = docker_container.nginx.name
}
