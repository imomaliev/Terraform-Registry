provider "github" {
  token = var.token
}

# https://registry.terraform.io/providers/integrations/github/4.20.0/docs/resources/repository
resource "github_repository" "project" {
  name                   = replace(lower(var.project_name), "/ +/", "-")
  description            = var.project_description
  homepage_url           = var.project_url
  visibility             = var.visibility
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  is_template            = false
  allow_merge_commit     = true
  allow_squash_merge     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  license_template       = var.license
  auto_init              = true
  topics                 = var.topics
  vulnerability_alerts   = true
  # TODO: add a way to setup https://docs.github.com/en/rest/reference/repos#enable-automated-security-fixes

  # https://registry.terraform.io/providers/integrations/github/4.20.0/docs/resources/repository#github-pages-configuration
  # REFACTORME: https://github.com/integrations/terraform-provider-github/issues/782
  # Currently pages does not work consistently on creation
  # pages {
  #   source {
  #     branch = "gh-pages"
  #     path   = "/"
  #   }
  # }

  # https://www.terraform.io/language/meta-arguments/lifecycle
  lifecycle {
    prevent_destroy = true
    ignore_changes = [license_template, auto_init]
  }
}


# https://registry.terraform.io/providers/integrations/github/4.20.0/docs/resources/branch_protection
resource "github_branch_protection" "main" {
  repository_id          = github_repository.project.node_id
  pattern                = "main"
  enforce_admins         = true
  require_signed_commits = true
  allows_force_pushes    = false
  allows_deletions       = false
}
