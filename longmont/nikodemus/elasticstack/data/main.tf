terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "longmont-server-02" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "lnmt2cuelkdata1"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.125"
  svc_mac        = "52:54:00:9B:68:02"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuelkdata1.yaml"
}

module "longmont-server-03" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "lnmt2cuelkdata2"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.126"
  svc_mac        = "52:54:00:9B:68:03"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuelkdata2.yaml"
}

