<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | 4.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 4.20.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch_protection.main](https://registry.terraform.io/providers/integrations/github/4.20.0/docs/resources/branch_protection) | resource |
| [github_repository.project](https://registry.terraform.io/providers/integrations/github/4.20.0/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_is_template"></a> [is\_template](#input\_is\_template) | Is template repository | `string` | `false` | no |
| <a name="input_license"></a> [license](#input\_license) | License | `string` | `"MIT"` | no |
| <a name="input_project_description"></a> [project\_description](#input\_project\_description) | Description | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name | `string` | n/a | yes |
| <a name="input_project_url"></a> [project\_url](#input\_project\_url) | Homepage url | `string` | `null` | no |
| <a name="input_token"></a> [token](#input\_token) | Token | `string` | n/a | yes |
| <a name="input_topics"></a> [topics](#input\_topics) | Topics | `list(string)` | `[]` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | Visiblity | `string` | `"public"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_git_clone_url"></a> [git\_clone\_url](#output\_git\_clone\_url) | n/a |
<!-- END_TF_DOCS -->
