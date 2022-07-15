variable "token" {
  type = string
}

variable "owner" {
  type = string
}

variable "repository" {
  type = string
}

variable "members" {
  type = list(string)
}

variable "developers" {
  type = list(string)
}

variable "approvers" {
  type = list(string)
}