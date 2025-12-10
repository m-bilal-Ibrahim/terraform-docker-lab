terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_image" "jenkins" {
  name = "jenkins/jenkins:lts"
}

resource "docker_container" "nginx" {
  name  = "nginx_server"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 9091
  }
}

resource "docker_container" "jenkins" {
  name  = "jenkins_server"
  image = docker_image.jenkins.image_id

  ports {
    internal = 8080
    external = 9092
  }
}
