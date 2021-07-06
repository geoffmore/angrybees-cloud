terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.3.1"
    }
  }
  required_version = ">= 0.13"
}
