# Variables necessary for auth

variable "vcd_user" {
  type = string
}

variable "vcd_pass" {
  type = string
}

variable "vcd_org" {
  type = string
}

variable "vcd_url" {
  type = string
}

variable "vcd_auth_type" {
  type = string
}

variable "vcd_max_retry_timeout" {
  type = number
}

variable "vcd_allow_unverified_ssl" {
  type = string
}

variable "vdc_catalog" {
  type = string
}

variable "vdc_catalog_delete_force" {
  type = string
  default = "true"
}

variable "vdc_catalog_delete_recursive" {
  type = string
  default = "true"
}