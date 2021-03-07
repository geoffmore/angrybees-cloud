module "vdc-ephemeral" {
  source = "./vdc-ephemeral"
  vcd_org = var.vcd_org
  vcd_vdc = "EphemeralSocks - Reserved"
  vcd_catalog = local.vcd_catalog
}

module "vdc-ephemeral-legacy" {
  source = "./vdc-ephemeral_legacy"
  vcd_org = var.vcd_org
  vcd_vdc = "EphemeralSocks - Reserved (Legacy)"
  vcd_catalog = local.vcd_catalog
}

# vcd_nsxv_dnat does not work in provider 3.1.0

resource "vcd_catalog" "main" {
  name = var.vdc_catalog
  description = var.vdc_catalog
  delete_recursive = var.vdc_catalog_delete_force
  delete_force = var.vdc_catalog_delete_recursive
}

locals {
  vcd_catalog_name = "Ephemeral Catalog"
  vcd_catalog = vcd_catalog.main.name
}