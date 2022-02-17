 #Variables
variable "name" {
    type = string
    description = "name of the image"
}

variable "container_name" {
    type = string
    description = "name of the container"
} 
 
#Start a container
resource "docker_container" "this" {
  name  = var.container_name
  image = docker_image.this.latest
}

# Find the latest Ubuntu precise image.
resource "docker_image" "this" {
  name = var.name
}

output "ipaddress" {
    value = docker_container.this.ip_address
}

output "ipaddress" {
    value = docker_container.this.id
}