terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "nederland-server-03" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld1cuombackup1"
  svc_bridge = "br0"
  svc_address = "10.100.105.3"
  mac_address = "52:54:00:9B:69:03"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld1cuombackup1.yaml"
}

module "nederland-server-08" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld1cuomsamba1"
  svc_bridge = "br0"
  svc_address = "10.100.105.8"
  mac_address = "52:54:00:9B:69:08"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld1cuomsamba1.yaml"
}

