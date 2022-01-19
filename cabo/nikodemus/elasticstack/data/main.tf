terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "cabo-server-04" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "cabo1cuomifed1"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.91"
  svc_mac        = "52:54:00:9B:66:04"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo1cuomifed1.yaml"
}

module "cabo-server-05" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "cabo1cuomifed2"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.92"
  svc_mac        = "52:54:00:9B:66:05"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo1cuomifed2.yaml"
}

