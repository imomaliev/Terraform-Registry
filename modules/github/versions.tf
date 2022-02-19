terraform {
  # https://www.terraform.io/language/expressions/type-constraints#experimental-optional-object-type-attributes
  # experiments = [module_variable_optional_attrs]
  required_providers {
    # https://registry.terraform.io/providers/integrations/github/4.20.0
    github = {
      source  = "integrations/github"
      version = "4.20.0"
    }
  }
}
