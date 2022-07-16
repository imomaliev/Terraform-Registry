variable "project_name" {
  description = "Project name"
  type        = string
}

variable "project_description" {
  description = "Description"
  type        = string
}

variable "project_url" {
  description = "Homepage url"
  type        = string
  default     = null
}

variable "token" {
  description = "Token"
  type        = string
}

variable "license" {
  description = "License"
  type        = string
  default     = "MIT"
}

variable "topics" {
  description = "Topics"
  type        = list(string)
  default     = []
}

variable "visibility" {
  description = "Visiblity"
  type        = string
  default     = "public"
}

variable "is_template" {
  description = "Is template repository"
  type        = string
  default     = false
}

variable "template" {
  description = "Template repository"
  type = object({
    owner      = string
    repository = string
  })
  default = null
}

variable "require_signed_commits" {
  description = "Require signed commits"
  type        = bool
  default     = false
}
