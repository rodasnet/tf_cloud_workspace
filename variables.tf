// Need for TFE provider configuration
variable "tf_token" {
  type      = string
  sensitive = true
    default = null
}

variable "organization" {
  type    = string
  default = "rodasnet"
}

variable "github_token" {
  type      = string
  sensitive = true
}

variable "github_oauth_client" {
  type = map
  default = {
      name             = "rodasnet-oauth-client"
      organization     = "rodasnet"
      api_url          = "https://api.github.com"
      http_url         = "https://github.com"
      oauth_token      =  "SuperSecret"
      service_provider = "github"
  }
}
