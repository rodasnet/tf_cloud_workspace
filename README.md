## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.38.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.38.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_team_access.custom](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/team_access) | resource |
| [tfe_team_access.managed](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/team_access) | resource |
| [tfe_variable.public](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/variable) | resource |
| [tfe_variable.sensitive](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/variable) | resource |
| [tfe_workspace.workspace](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/workspace) | resource |
| [tfe_workspace_variable_set.vs](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/resources/workspace_variable_set) | resource |
| [tfe_team.custom](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/data-sources/team) | data source |
| [tfe_team.managed](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/data-sources/team) | data source |
| [tfe_variable_set.vs](https://registry.terraform.io/providers/hashicorp/tfe/0.38.0/docs/data-sources/variable_set) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_pool_id"></a> [agent\_pool\_id](#input\_agent\_pool\_id) | (Optional) The ID of an agent pool to assign to the workspace. Requires execution\_mode to be set to agent. This value must not be provided if execution\_mode is set to any other value or if operations is provided. | `string` | `null` | no |
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | (Optional) Whether destroy plans can be queued on the workspace. | `bool` | `true` | no |
| <a name="input_assessments_enabled"></a> [assessments\_enabled](#input\_assessments\_enabled) | (Optional) Whether to regularly run health assessments such as drift detection on the workspace. Defaults to false. | `bool` | `null` | no |
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | (Optional) Whether to automatically apply changes when a Terraform plan is successful. Defaults to false. | `bool` | `false` | no |
| <a name="input_custom_team_access"></a> [custom\_team\_access](#input\_custom\_team\_access) | Map of existing Team(s) and custom permissions to grant on Workspace. If used, all keys in the object must be specified. | <pre>map(<br>    object(<br>      {<br>        runs              = string<br>        variables         = string<br>        state_versions    = string<br>        sentinel_mocks    = string<br>        workspace_locking = bool<br>        run_tasks         = bool<br>      }<br>    )<br>  )</pre> | `{}` | no |
| <a name="input_description"></a> [description](#input\_description) | (Required) A description for the workspace. | `string` | n/a | yes |
| <a name="input_example_block"></a> [example\_block](#input\_example\_block) | n/a | <pre>object({<br>    name    = string<br>    enabled = bool<br>  })</pre> | `null` | no |
| <a name="input_execution_mode"></a> [execution\_mode](#input\_execution\_mode) | (Optional) Which execution mode to use. Using Terraform Cloud, valid values are remote, local oragent. Defaults to remote. Using Terraform Enterprise, only remoteand local execution modes are valid. When set to local, the workspace will be used for state storage only. This value must not be provided if operations is provided. | `string` | `"remote"` | no |
| <a name="input_file_triggers_enabled"></a> [file\_triggers\_enabled](#input\_file\_triggers\_enabled) | (Optional) Whether to filter runs based on the changed files in a VCS push. Defaults to true. If enabled, the working directory and trigger prefixes describe a set of paths which must contain changes for a VCS push to trigger a run. If disabled, any push will trigger a run. | `bool` | `null` | no |
| <a name="input_global_remote_state"></a> [global\_remote\_state](#input\_global\_remote\_state) | (Optional) Whether the workspace allows all workspaces in the organization to access its state data during runs. If false, then only specifically approved workspaces can access its state (remote\_state\_consumer\_ids). | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Name of the workspace. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | (Required) Name of the organization. | `string` | n/a | yes |
| <a name="input_queue_all_runs"></a> [queue\_all\_runs](#input\_queue\_all\_runs) | (Optional) Whether the workspace should start automatically performing runs immediately after its creation. Defaults to true. When set to false, runs triggered by a webhook (such as a commit in VCS) will not be queued until at least one run has been manually queued. Note: This default differs from the Terraform Cloud API default, which is false. The provider uses true as any workspace provisioned with false would need to then have a run manually queued out-of-band before accepting webhooks. | `bool` | `null` | no |
| <a name="input_remote_state_consumer_ids"></a> [remote\_state\_consumer\_ids](#input\_remote\_state\_consumer\_ids) | (Optional) The set of workspace IDs set as explicit remote state consumers for the given workspace. | `list(string)` | `null` | no |
| <a name="input_speculative_enabled"></a> [speculative\_enabled](#input\_speculative\_enabled) | (Optional) Whether this workspace allows speculative plans. Defaults to true. Setting this to false prevents Terraform Cloud or the Terraform Enterprise instance from running plans on pull requests, which can improve security if the VCS repository is public or includes untrusted contributors. | `bool` | `null` | no |
| <a name="input_ssh_key_id"></a> [ssh\_key\_id](#input\_ssh\_key\_id) | (Optional) The ID of an SSH key to assign to the workspace. | `string` | `null` | no |
| <a name="input_structured_run_output_enabled"></a> [structured\_run\_output\_enabled](#input\_structured\_run\_output\_enabled) | (Optional) Whether this workspace should show output from Terraform runs using the enhanced UI when available. Defaults to true. Setting this to false ensures that all runs in this workspace will display their output as text logs. | `bool` | `null` | no |
| <a name="input_tag_names"></a> [tag\_names](#input\_tag\_names) | (Optional) A list of tag names for this workspace. Note that tags must only contain lowercase letters, numbers, colons, or hyphens. | `list(string)` | `null` | no |
| <a name="input_team_access"></a> [team\_access](#input\_team\_access) | Map of existing Team(s) and built-in permissions to grant on Workspace. | `map(string)` | `{}` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | (Optional) The version of Terraform to use for this workspace. This can be either an exact version or a version constraint (like ~> 1.0.0); if you specify a constraint, the workspace will always use the newest release that meets that constraint. Defaults to the latest available version. | `string` | `null` | no |
| <a name="input_tfe_variable_public_map"></a> [tfe\_variable\_public\_map](#input\_tfe\_variable\_public\_map) | A map of public variable to add as environment variables to the TFC workspace | `map(any)` | `{}` | no |
| <a name="input_tfe_variable_sensitive_map"></a> [tfe\_variable\_sensitive\_map](#input\_tfe\_variable\_sensitive\_map) | A map of sensitive variable to add as environment variables to the TFC workspace | `map(any)` | `{}` | no |
| <a name="input_trigger_patterns"></a> [trigger\_patterns](#input\_trigger\_patterns) | (Optional) List of glob patterns that describe the files Terraform Cloud monitors for changes. Trigger patterns are always appended to the root directory of the repository. Mutually exclusive with trigger-prefixes. Only available for Terraform Cloud. | `list(string)` | `null` | no |
| <a name="input_trigger_prefixes"></a> [trigger\_prefixes](#input\_trigger\_prefixes) | (Optional) List of repository-root-relative paths which describe all locations to be tracked for changes. | `list(string)` | `null` | no |
| <a name="input_variable_set_names"></a> [variable\_set\_names](#input\_variable\_set\_names) | List of names of existing Variable Sets to add this Workspace into. | `list(string)` | `[]` | no |
| <a name="input_vcs_repo"></a> [vcs\_repo](#input\_vcs\_repo) | (Optional) Settings for the workspace's VCS repository, enabling the UI/VCS-driven run workflow. Omit this argument to utilize the CLI-driven and API-driven workflows, where runs are not driven by webhooks on your VCS provider. | <pre>object({<br>    identifier          = string<br>    branch              = optional(string)<br>    ingress_submodules  = optional(string)<br>    oauth_token_id      = string<br>    tags_regex          = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | (Optional) A relative path that Terraform will execute within. Defaults to the root of your repository. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | n/a |
