module "aws-acct-dev-01" {
  source = "./module/workspace"
  organization = var.organization

  # workspace_settings = var.my-workspace_settings
  workspace_settings = {
    description         = "Second something really special"
    repo_name           = "terraform-rodasnet.com"
    workspace_name      = "aws-acct-dev-01"
  }
}

