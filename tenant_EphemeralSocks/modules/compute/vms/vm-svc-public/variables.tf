variable "vdc_egw" {
  type = string
}
variable "vdc_external_ip" {
  type = string
}

variable "vm_ip" {
  type = string
}

variable "vm_port" {
  type = number
}

variable "svc_proto" {
  type = string
}

variable "net_name" {
  type = string
}

variable "svc_description" {
  type = string
}

variable "svc_port" {
  type = string
}

variable "svc_enabled" {
  type = bool
  default = false
  description = "Whether or not to create the svc as enabled. Defaults to false since creating a VM doesn't guarantee its readiness to serve external traffic"
}

variable "svc_logging_enabled" {
  type = bool
  default = false
}

variable "catalog_name" {
  type = string
}

variable "template_name" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_memory" {
  type = number
  description = "Amount of VM Memory in MB"
}

variable "vm_cpus" {
  type = number
  description = "Number of VM CPU threads. Assumes 1 socket"
}

variable "vcd_vdc" {
  type = string
}