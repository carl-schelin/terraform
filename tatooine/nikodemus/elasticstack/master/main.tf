terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "tatooine-server-10" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "tato1cuomifem1"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.115"
  svc_mac        = "52:54:00:9B:67:0A"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato1cuomifem1.yaml"
}

module "tatooine-server-11" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "tato1cuomifem2"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.116"
  svc_mac        = "52:54:00:9B:67:0B"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato1cuomifem2.yaml"
}

module "tatooine-server-12" {
  # load the module
  source = "../../../../modules/single/"

  # set the variables
  machine_name   = "tato1cuomifem3"
  svc_bridge     = "br0"
  svc_address    = "192.168.1.117"
  svc_mac        = "52:54:00:9B:67:0C"
  ram_request    = "4096"
  cpu_request    = "2"
  machine_image  = "centos8_20g.qcow2"
  user_data_path = "${path.module}/tato1cuomifem3.yaml"
}

