variable "vcd_org" {
  type = string
}

variable "vcd_vdc"  {
  type = string
}

variable "vdc_egw" {
  type = string
}

variable "net_dns1" {
  type = string
}

variable "net_dns2" {
  type = string
}

variable "net_dns_suffix" {
  type = string
}

variable "net_name" {
  type = string
}

variable "net_gateway" {
  type = string
}

variable "net_netmask" {
  type = string
}

variable "net_iface_type" {
  type = string
  default = "internal"
}

variable "net_static_ip_pool_start" {
  type = string
}

variable "net_static_ip_pool_end" {
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