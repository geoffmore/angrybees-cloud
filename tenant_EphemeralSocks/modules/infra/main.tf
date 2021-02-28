# Provides information about the provisioned infrastructure
# in the VDC
data "vcd_nsxt_edgegateway" "main" {
  name = var.vdc_egw
  vdc = var.vcd_vdc
}