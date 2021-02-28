module "vdc-ephemeral" {
  source = "./vdc-ephemeral"
  vcd_org = var.vcd_org
}

/*
module "vdc-ephemeral-legacy" {
  source = "./vdc-ephemeral_legacy"
}
*/