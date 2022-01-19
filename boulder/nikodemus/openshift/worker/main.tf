terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "boulder-server-33" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "bldr1cuomokdwrk1"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.82"
  svc_mac        = "52:54:00:9B:65:21"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomokdwrk1.yaml"
}

module "boulder-server-34" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "bldr1cuomokdwrk2"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.83"
  svc_mac        = "52:54:00:9B:65:22"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomokdwrk2.yaml"
}

module "boulder-server-35" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "bldr1cuomokdwrk3"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.84"
  svc_mac        = "52:54:00:9B:65:23"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomokdwrk3.yaml"
}

