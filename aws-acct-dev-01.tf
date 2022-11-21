module "aws-acct-dev-01" {
  source = "./module/workspace"
  organization = var.organization

  workspace_settings = {
    workspace_name      = "aws-acct-dev-01"
    description         = "Second something really special"
  }
}

