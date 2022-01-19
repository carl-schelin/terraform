terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "boulder-server-04" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "bldr1cuomdev1"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.53"
  svc_mac        = "52:54:00:9B:65:04"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomdev1.yaml"
}

module "boulder-server-05" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "bldr1cuomdev2"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.54"
  svc_mac        = "52:54:00:9B:65:05"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomdev2.yaml"
}

module "boulder-server-06" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "bldr1cuomdev3"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.55"
  svc_mac        = "52:54:00:9B:65:06"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomdev3.yaml"
}

module "boulder-server-07" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "bldr1cuomdev4"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.56"
  svc_mac        = "52:54:00:9B:65:07"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/bldr1cuomdev4.yaml"
}

