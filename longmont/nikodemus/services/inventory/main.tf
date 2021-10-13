terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.10"
    }
  }
}

module "longmont-server-23" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomipam1"
  svc_bridge = "br0"
  svc_address = "10.100.104.23"
  mac_address = "52:54:00;9B;68:17"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomipam1.yaml"
}

module "longmont-server-44" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomnetbox1"
  svc_bridge = "br0"
  svc_address = "10.100.104.44"
  mac_address = "52:54:00;9B;68:2C"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomnetbox1.yaml"
}

