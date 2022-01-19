terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "longmont-server-08" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "lnmt2cuelkmstr1"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.131"
  svc_mac        = "52:54:00:9B:68:08"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuelkmstr1.yaml"
}

module "longmont-server-09" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "lnmt2cuelkmstr2"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.132"
  svc_mac        = "52:54:00:9B:68:09"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuelkmstr2.yaml"
}

module "longmont-server-10" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "lnmt2cuelkmstr3"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.133"
  svc_mac        = "52:54:00:9B:68:0A"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuelkmstr3.yaml"
}

