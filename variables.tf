variable "environment_name" {
  type = string
}

variable "owner_name" {
  type = string
}

variable "ttl" {
  type    = number
  default = 48
}

variable "name" {
  type = string
}

variable "deletion_window_in_days" {
  type    = number
  default = 7
}

variable "policy" {
  type    = string
  default = null
}

variable "tags" {
  type    = map
  default = null
}
