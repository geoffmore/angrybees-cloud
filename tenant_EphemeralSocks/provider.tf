provider "vcd" {
  user                 = var.vcd_user
  password             = var.vcd_pass
  auth_type            = var.vcd_auth_type
  org                  = var.vcd_org
  url                  = var.vcd_url
  max_retry_timeout    = var.vcd_max_retry_timeout
  allow_unverified_ssl = var.vcd_allow_unverified_ssl
}