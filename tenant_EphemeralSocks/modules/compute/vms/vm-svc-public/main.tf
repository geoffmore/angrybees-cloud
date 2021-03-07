resource "vcd_vapp" "app" {
  name = var.vm_name

  vdc = var.vcd_vdc

  metadata = {
    description = var.svc_description
  }
}

resource "vcd_vapp_org_network" "app" {

  vdc = var.vcd_vdc
  vapp_name = vcd_vapp.app.name
  org_network_name = var.net_name
}

resource "vcd_vapp_vm" "app" {

  vdc = var.vcd_vdc

  vapp_name = vcd_vapp.app.name
  name = var.vm_name
  catalog_name = var.catalog_name
  template_name = var.template_name
  memory = var.vm_memory
  cpus = var.vm_cpus
  cpu_cores = var.vm_cpus

  metadata = {
    description = var.svc_description
  }

  /*
  guest_properties = {

  }
  */

  # VM creation succeeds, but terraform reports it as failed
  /*
  network {
    type = "org"
    name = vcd_vapp_org_network.app.org_network_name

    ip_allocation_mode = "MANUAL"
    ip = var.vm_ip
  }
  */
}

# DNAT cannot be used in provider 3.1.0
/*
resource "vcd_nsxv_dnat" "dnat" {

  depends_on = [vcd_vapp_vm.app]
  vdc = var.vcd_vdc

  edge_gateway = var.vdc_egw
  network_name = var.net_name
  # Make sure the network in modules.bootstrap is type "org" for this to work?
  network_type = "org"
  enabled = var.svc_enabled
  logging_enabled = var.svc_logging_enabled
  description = var.svc_description

  original_address = var.vdc_external_ip
  original_port = var.svc_port

  translated_address = var.vm_ip
  translated_port = var.vm_port
  protocol = var.svc_proto

}
*/