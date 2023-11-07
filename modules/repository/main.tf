terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

resource "github_repository" "repository" {
  name        = "${var.prefix}${var.name}"
  description = var.description
  visibility = var.visibiliy
  auto_init = true
}

resource "github_branch" "main" {
    repository = github_repository.repository.name
    branch = "main"
}

resource "github_branch_default" "default" {
    repository = github_repository.repository.name
    branch = github_branch.main.branch
}