terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "longmont-server-33" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "lnmt2cuomkube1"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.156"
  svc_mac        = "52:54:00:9B:68:21"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomkube1.yaml"
}

module "longmont-server-34" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "lnmt2cuomkube2"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.157"
  svc_mac        = "52:54:00:9B:68:22"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomkube2.yaml"
}

module "longmont-server-35" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "lnmt2cuomkube3"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.158"
  svc_mac        = "52:54:00:9B:68:23"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt2cuomkube3.yaml"
}

