terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.10"
    }
  }
}

module "nederland-server-04" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld1cuomdev1"
  svc_bridge = "br0"
  svc_address = "10.100.105.4"
  mac_address = "52:54:00:9B:69:04"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld1cuomdev1.yaml"
}

module "nederland-server-05" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld1cuomgit1"
  svc_bridge = "br0"
  svc_address = "10.100.105.5"
  mac_address = "52:54:00:9B:69:05"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld1cuomgit1.yaml"
}

module "nederland-server-07" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld1cuomphoto1"
  svc_bridge = "br0"
  svc_address = "10.100.105.7"
  mac_address = "52:54:00:9B:69:07"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld1cuomphoto1.yaml"
}

