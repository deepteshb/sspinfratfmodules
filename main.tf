module "docker" {
    source = "./modules/docker"

    name = "nginx_app"
    imagename = "nginx:latest"

}


