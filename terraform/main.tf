module "github" {
  source = "../modules/github"

  project_name        = var.project_name
  project_description = var.project_description
  token               = var.github_token
  topics              = var.github_topics
}
