
variable "organization" {
  type    = string
  default = "rodasnet"
}

variable "tf_token" {
  type      = string
  sensitive = true
    default = null
}

variable "github_token" {
  type      = string
  sensitive = true
    default = null
}


