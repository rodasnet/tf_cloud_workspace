module "workspace-with-all-options" {
  source          = "./module/workspace"
  global_settings = var.global_settings

  workspace_settings = {
    workspace_name                  = "workspace-with-all-options"
    description                     = "TFE Workspace module with all options"
    agent_pool_id                   = tfe_agent_pool.test-agent-pool.id
    # allow_destroy_plan              = ""
    # auto_apply                      = ""
    # execution_mode                  = ""
    # assessments_enabled             = ""
    # file_triggers_enabled           = ""
    # global_remote_state             = ""
    # queue_all_runs                  = ""
    # speculative_enabled             = ""
    # structured_run_output_enabled   = ""
    # ssh_key_id                      = ""
    # tag_names                       = ""
    # terraform_version               = ""
    # trigger_prefixes                = ""
    # trigger_patterns                = ""
    # working_directory               = ""
  }
  
  tfe_variable_public_map = {
    LOCATION    = "West Coast"
    TIER        = "Premium"
    ENV_VARIABLE_3 = "Value Number 3"
  }
}

resource "tfe_agent_pool" "test-agent-pool" {
  name         = "my-agent-pool-name"
  organization = var.global_settings.organization
}
