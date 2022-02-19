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

variable "visibility" {
  description = "Visiblity"
  type        = string
  default     = "public"
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
  default     = ["terraform", "pre-commit", "editorconfig"]
}
