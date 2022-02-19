variable "project_name" {
  description = "Project name"
  type        = string
  default     = "Terraform Registry"
}

variable "project_description" {
  description = "Project description"
  type        = string
  default     = "Personal Terraform Registry"
}

variable "github_token" {
  description = "GitHub token"
  type        = string
}

variable "github_topics" {
  description = "GitHub project topics"
  type        = list(string)
  default     = ["terraform", "pre-commit", "editorconfig"]
}
