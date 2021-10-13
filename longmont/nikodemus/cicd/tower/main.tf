terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.10"
    }
  }
}

module "longmont-server-12" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomans1"
  svc_bridge = "br0"
  svc_address = "10.100.104.12"
  mac_address = "52:54:00;9B;68:0C"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomans1.yaml"
}

module "longmont-server-15" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomawx1"
  svc_bridge = "br0"
  svc_address = "10.100.104.15"
  mac_address = "52:54:00;9B;68:0F"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomawx1.yaml"
}

