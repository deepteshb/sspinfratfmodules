module "docker" {
    source = "./modules/"

    name = "nginx_app"
    imagename = "nginx:latest"

}


