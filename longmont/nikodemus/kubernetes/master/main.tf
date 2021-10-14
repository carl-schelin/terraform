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
  machine_name = "lnmt1cuomkube1"
  svc_bridge = "br0"
  svc_address = "10.100.104.33"
  mac_address = "52:54:00;9B;68:21"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomkube1.yaml"
}

module "longmont-server-34" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomkube2"
  svc_bridge = "br0"
  svc_address = "10.100.104.34"
  mac_address = "52:54:00;9B;68:22"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomkube2.yaml"
}

module "longmont-server-35" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "lnmt1cuomkube3"
  svc_bridge = "br0"
  svc_address = "10.100.104.35"
  mac_address = "52:54:00;9B;68:23"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/lnmt1cuomkube3.yaml"
}

