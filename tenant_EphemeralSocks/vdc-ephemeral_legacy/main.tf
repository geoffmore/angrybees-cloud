locals {
  # Common
  #vcd_org = var.vcd_org
  #vcd_vdc = "EphemeralSocks - Reserved"
  # Infra
  vdc_egw = "egw_tenant_ephemeralsocks_primary"
  vdc_external_ip = module.infra.vdc_external_ip
  # Bootstrap
  net_dns1 = "1.1.1.1"
  net_dns2 = "8.8.8.8"
  net_dns_suffix = "ab0.ephemeralsocks.co"
  net_name = "ab-app-01"
  net_netmask = "255.255.255.0"
  net_gateway = "192.168.192.1"
  net_iface_type = "internal"
  net_static_ip_pool_start = "192.168.192.2"
  net_static_ip_pool_end = "192.168.192.101"
  vdc_catalog = "Ephemeral Catalog"

}

module "infra" {
  source = "../modules/infra"

  vcd_vdc = var.vcd_vdc
  vdc_egw = local.vdc_egw
}

# Unable to run this module because the vcd_network_routed imported tries to have its org set from var.vcd_org to null every time. (recreated)
# This vdc should be fine without the state being managed in this module
/*
module "bootstrap" {
  source = "../modules/bootstrap"
  depends_on = [module.infra]

  net_dns1 = local.net_dns1
  net_dns2 = local.net_dns2
  net_dns_suffix = local.net_dns_suffix
  net_gateway = local.net_gateway
  net_name = local.net_name
  net_netmask = local.net_netmask
  net_static_ip_pool_start = local.net_static_ip_pool_start
  net_static_ip_pool_end = local.net_static_ip_pool_end
  vcd_org = var.vcd_org
  vcd_vdc = var.vcd_vdc
  vdc_catalog = local.vdc_catalog
  vdc_egw = local.vdc_egw
}
*/