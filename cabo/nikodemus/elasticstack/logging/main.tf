terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "cabo-server-07" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "cabo1cuomifel1"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.84"
  svc_mac        = "52:54:00:9B:66:07"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo1cuomifel1.yaml"
}

module "cabo-server-08" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "cabo1cuomifel2"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.95"
  svc_mac        = "52:54:00:9B:66:08"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo1cuomifel2.yaml"
}

module "cabo-server-09" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "cabo1cuomifel3"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.96"
  svc_mac        = "52:54:00:9B:66:09"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/cabo1cuomifel3.yaml"
}

