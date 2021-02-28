output "vdc_external_ip" {
  value = data.vcd_nsxt_edgegateway.main.primary_ip
}
