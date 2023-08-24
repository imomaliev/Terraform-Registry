terraform {
  # https://www.terraform.io/language/expressions/type-constraints#experimental-optional-object-type-attributes
  # experiments = [module_variable_optional_attrs]
  required_providers {
    # https://registry.terraform.io/providers/integrations/github/5.33.0
    github = {
      source  = "integrations/github"
      version = "5.33.0"
    }
  }
}
