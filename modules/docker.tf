terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}
provider "docker" {
  # Configuration options
}

#variables
variable "imagename" {
  type = string
  description = "(optional) describe your variable"
}

variable "name" {
  type = string
  description = "(optional) describe your variable"
}

# Start a container
resource "docker_container" "this" {
  name  = var.name
  image = docker_image.this.latest

  ports{
    internal = 80
    external = 8080
  }
}

# Find the latest Ubuntu precise image.
resource "docker_image" "this" {
  name = var.imagename
}

#output
output "containerid" {
  value = docker_container.this.id
}

output "containerip" {
  value = docker_container.this.ip_address
}