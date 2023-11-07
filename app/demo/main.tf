provider "github" {
    // User env var GITHUB_TOKEN
}

module "repository" {
    source = "../../modules/repository"
    name = "demo"
    visibiliy = "private"
}