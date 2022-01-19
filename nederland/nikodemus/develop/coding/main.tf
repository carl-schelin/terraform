terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.11"
    }
  }
}

module "nederland-server-04" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld2cuomdev1"
  svc_bridge = "br0"
  svc_address = "192.168.1.179"
  svc_mac = "52:54:00:9B:69:04"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld2cuomdev1.yaml"
}

module "nederland-server-05" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld2cuomgit1"
  svc_bridge = "br0"
  svc_address = "192.168.1.180"
  svc_mac = "52:54:00:9B:69:05"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld2cuomgit1.yaml"
}

module "nederland-server-07" {
# load the module
  source = "../../../../modules/single/"

# set the variables
  machine_name = "ndld2cuomphoto1"
  svc_bridge = "br0"
  svc_address = "192.168.1.182"
  svc_mac = "52:54:00:9B:69:07"
  ram_request = "4096"
  cpu_request = "2"
  machine_image = "centos8_20g.qcow2"
  user_data_path = "${path.module}/ndld2cuomphoto1.yaml"
}

