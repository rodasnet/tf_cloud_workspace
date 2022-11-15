module "aws-acct-dev-02" {
  source = "./module/workspace"

  organization      = var.organization
  workspace_name    = "aws-acct-dev-02"
  repo_name         = "terraform-rodasnet.com"
  oauth_token       = var.github_token
  
  // Optional variable
  branch            = "feature-branch"
}