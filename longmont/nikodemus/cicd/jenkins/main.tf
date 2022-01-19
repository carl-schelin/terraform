terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "longmont-server-25" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "lnmt2cuomjkns1"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.148"
  svc_mac        = "52:54:00:9B:68:19"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomjkns1.yaml"
}

module "longmont-server-26" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "lnmt2cuomjkns2"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.149"
  svc_mac        = "52:54:00:9B:68:1A"
  ram_request    = "2048"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomjkns2.yaml"
}

module "longmont-server-27" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "lnmt2cuomjkns3"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.150"
  svc_mac        = "52:54:00:9B:68:1B"
  ram_request    = "2048"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomjkns3.yaml"
}

