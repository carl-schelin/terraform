terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "nederland-server-12" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld1cuomwin7"
  svc_bridge = "br0"
  svc_address = "10.100.105.12"
  mac_address = "52:54:00:9B:69:0C"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld1cuomwin7.yaml"
}

module "nederland-server-13" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld1cuomwinxp"
  svc_bridge = "br0"
  svc_address = "10.100.105.13"
  mac_address = "52:54:00:9B:69:0D"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld1cuomwinxp.yaml"
}

