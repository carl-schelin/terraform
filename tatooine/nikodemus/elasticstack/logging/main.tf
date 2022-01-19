terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "tatooine-server-07" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "tato1cuomifel1"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.112"
  svc_mac        = "52:54:00:9B:67:07"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato1cuomifel1.yaml"
}

module "tatooine-server-08" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "tato1cuomifel2"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.113"
  svc_mac        = "52:54:00:9B:67:08"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato1cuomifel2.yaml"
}

module "tatooine-server-09" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "tato1cuomifel3"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.114"
  svc_mac        = "52:54:00:9B:67:09"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato1cuomifel3.yaml"
}

