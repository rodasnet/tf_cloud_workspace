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
      api_url          = "https://api.github.com"
      http_url         = "https://github.com"
      service_provider = "github"
  }
}

variable "global_settings" {
  type = object({
    organization    = optional(string)
  })
  default = {
      organization     = "rodasnet"
  }
}
