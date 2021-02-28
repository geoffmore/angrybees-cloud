# Bootstraps then VDC with necessary goodies
# TODO - make routed networks their own module
resource "vcd_network_routed" "main" {

  dns1 = var.net_dns1
  dns2 = var.net_dns2
  dns_suffix = var.net_dns_suffix

  name = var.net_name
  edge_gateway = var.vdc_egw
  gateway = var.net_gateway
  netmask = var.net_netmask
  interface_type = var.net_iface_type

  # Cannot specify dhcp_pool for some reason (3.1.0)
  #dhcp_pool {
  #  start_address = "192.168.192.101"
  #  end_address = "192.168.192.253"
  #}

  static_ip_pool {
    start_address = var.net_static_ip_pool_start
    end_address = var.net_static_ip_pool_end
  }
}

resource "vcd_catalog" "main" {
  name = var.vdc_catalog
  description = var.vdc_catalog
  delete_recursive = var.vdc_catalog_delete_force
  delete_force = var.vdc_catalog_delete_recursive
}


